/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequ.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alalaoui <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/04/19 17:24:01 by alalaoui          #+#    #+#             */
/*   Updated: 2017/04/27 14:53:07 by alalaoui         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int					ft_strequ(char const *s1, char const *s2)
{
	if (!s1 && !s2)
		return (1);
	if (!s1 || !s2)
		return (0);
	return (ft_strcmp(s1, s2) == 0);
}
