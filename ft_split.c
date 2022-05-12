/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: davidsan <davidsan@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/07 10:15:31 by davidsan          #+#    #+#             */
/*   Updated: 2022/05/12 20:27:37 by davidsan         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	ft_count_word(char const *s, char c)
{
	size_t	count;

	count = 0;
	while (*s && *s == c)
		s++;
	while (*s)
	{
		count++;
		while (*s && *s != c)
			s++;
		while (*s && *s == c)
			s++;
	}
	return (count);
}

char	**ft_split(char const *s, char c)
{
	int		number;
	int		i;
	int		j;
	int		start;
	char	**str;

	if ((s == 0) || (c == 0))
		return (NULL);
	number = ft_count_word(s, c);
	str = malloc((sizeof(char *) * (number + 1)));
	i = 0;
	j = -1;
	while (++j < number)
	{
		while (s[i] && s[i] == c)
			i++;
		start = i;
		while (s[i] && s[i] != c)
			i++;
		str[j] = ft_substr(s, start, i - start);
		i++;
	}
	str[j] = NULL;
	return (str);
}

char	**free_machine(char **s, size_t index)
{
	while (s[index] != NULL && index >= 0)
	{
		free(s[index]);
		s[index] = NULL;
		index--;
	}
	free(s);
	s = NULL;
	return (NULL);
}
