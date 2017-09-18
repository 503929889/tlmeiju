package com.haoran.meiju.dao;

import com.haoran.meiju.entity.Content;

public interface IContentDao extends ComDao{
	Content getByTitleId(int titleId);
}