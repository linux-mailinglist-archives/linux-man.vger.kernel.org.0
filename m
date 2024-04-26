Return-Path: <linux-man+bounces-825-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 007FB8B4202
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 00:01:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62B37B20E54
	for <lists+linux-man@lfdr.de>; Fri, 26 Apr 2024 22:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB52437163;
	Fri, 26 Apr 2024 22:01:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b="JwrmnwJq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ljabl.com (mail.ljabl.com [88.99.6.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89EF62CCB4
	for <linux-man@vger.kernel.org>; Fri, 26 Apr 2024 22:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=88.99.6.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714168860; cv=none; b=oJUpMpHZHXbk6Tmiu1CjcHqlYXm2/fX7rmpyF8IIQMmTQz2fIKHHVcj/6Br/AfHvMjZvO9RTkaW4T0/uYLSm38mRargk+p6BDOhUBwyMMzVV32SiDXrLSIlZxHFAHxYb5GWCkC01LQiMvVeR8sAvkypTe+AiX8oGysxR3M023P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714168860; c=relaxed/simple;
	bh=vzeWqWpAeXe5ZQx0E6JHWjNYIUF6mve26FiUoPeT4KE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U6Sy2BQeU1xBi+Z7WfyMAK/IX5bjqoG9JxXhjiGWDH72GzWbg9vsjfLJyb4VBptc5yxB4nnJgeo5aoOUgPomJYGkc28QvdjeMVgxbbpvCIWTdbUMmapce0sAk1Jw8xbFoNbMcz/ztZj+oZjU7hYJV5dMwJDNgRRyZNXzM4EsSMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com; spf=pass smtp.mailfrom=ljabl.com; dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b=JwrmnwJq; arc=none smtp.client-ip=88.99.6.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ljabl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
	t=1714168457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=spkvzT0FFkZ7P/HMmtAnlL2Hhkfr2CmOqQlWaH0HMQ4=;
	b=JwrmnwJqXKo3akFnGuyypU7Sbd67yLhYv6d8WSFyP21YWqkUKQlkk2APi/oT/luSBKnZAe
	2xLn3vsFtIF88trs3bz0A4lOi4v3xG2UDEyyG6GXEqHrRNg0umKXJWfBNm9e9eZJtSRaTD
	3u1cYs8JxvEdFSH6ZOeQwp3MUBrpeLM=
Received: 
	by ljabl.com (OpenSMTPD) with ESMTPSA id e4b67bb1 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 26 Apr 2024 21:54:16 +0000 (UTC)
Received: 
	by fluorine (OpenSMTPD) with ESMTPA id a72e7b89;
	Fri, 26 Apr 2024 23:54:16 +0200 (CEST)
Date: Fri, 26 Apr 2024 21:54:15 +0000
From: Lennart Jablonka <humm@ljabl.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, groff@gnu.org
Cc: linux-man@vger.kernel.org, bug-ncurses@gnu.org, alx@kernel.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <ZiwihxockR9UOCxV@fluorine>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org,
	alx@kernel.org
References: <20240426055958.3hzal6m4r7mgzhqj@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240426055958.3hzal6m4r7mgzhqj@illithid>
Content-Language: en-US
X-Clacks-Overhead: GNU Terry Pratchett

Quoth G. Branden Robinson:
>I have been dissatisfied with groff man(7)'s SY and YS macros for a long
>time.  My primary grievance is one that has frustrated its uptake by
>documenters of libraries: the macros are designed for synopsizing Unix
>commands, not C library functions.
>
>After working on the ncurses man pages for a while it became clear to me
>how to modestly revise the way groff man(7)'s SY and YS macros work to
>serve both sets of authors better.

I’m sure this is good and fine, but I do wanna mention this: 
SYNOPSIS items with lines after the first one aligned, possibly 
with something on the first line, is like the one usecase for .HP.  
I think it would be good to mention that, even if Groff deprecates 
.HP (because HTML is incapable of expressing that?  I don’t like 
that reason.  Besides, CSS has `text-indent: $length hanging` 
now).

