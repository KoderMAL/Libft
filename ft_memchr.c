/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alalaoui <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/19 14:25:41 by alalaoui          #+#    #+#             */
/*   Updated: 2017/06/22 14:21:13 by alalaoui         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void					*ft_memchr(const void *s, int c, size_t n)
{
	unsigned char		*ps;

	ps = (unsigned char*)s;
	while (n--)
	{
		if (*ps == (unsigned char)c)
			return ((void*)ps);
		ps++;
	}
	return (NULL);
}
