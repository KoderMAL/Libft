/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alalaoui <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/06/25 17:11:42 by alalaoui          #+#    #+#             */
/*   Updated: 2017/10/10 16:47:18 by alalaoui         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <fcntl.h>

static t_gnl		*ft_create_file(int fd)
{
	t_gnl			*file;

	if (!(file = (t_gnl*)malloc(sizeof(t_gnl))))
		return (NULL);
	file->content = NULL;
	file->fd = fd;
	file->tmp = ft_strnew(0);
	file->next = NULL;
	return (file);
}

static int			ft_gnl_return(char *content, char **line)
{
	char			*eof;

	if (!content)
		return (0);
	eof = ft_strchr(content, '\n');
	if (eof)
	{
		*eof = '\0';
		eof++;
		*line = ft_strdup(content);
		ft_strncpy(content, eof, ft_strlen(eof) + 1);
		return (1);
	}
	else if (ft_strlen(content) > 0)
	{
		*line = ft_strdup(content);
		*content = '\0';
		return (1);
	}
	return (0);
}

int					get_next_line(const int fd, char **line)
{
	char			buffer[BUFF_SIZE + 1];
	int				ret;
	static t_gnl	*l = NULL;

	if (!l)
		l = ft_create_file(fd);
	if (fd < 0 || line == NULL || read(fd, buffer, 0) < 0)
		return (-1);
	while ((ret = read(fd, buffer, BUFF_SIZE)) > 0)
	{
		buffer[ret] = '\0';
		l->content = ft_strjoin(l->tmp, buffer);
		free(l->tmp);
		l->tmp = l->content;
		if (ft_strchr(l->tmp, '\n'))
			break ;
	}
	return (ft_gnl_return(l->content, line));
}
