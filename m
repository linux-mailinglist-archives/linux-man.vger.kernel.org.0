Return-Path: <linux-man+bounces-4234-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F9FC1FE68
	for <lists+linux-man@lfdr.de>; Thu, 30 Oct 2025 12:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D497634D441
	for <lists+linux-man@lfdr.de>; Thu, 30 Oct 2025 11:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B27C2351FA7;
	Thu, 30 Oct 2025 11:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="VXGx+F7w";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="QeMo81b9";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="DbVLR1uv";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="sM/3a2ws"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BC2A314D27
	for <linux-man@vger.kernel.org>; Thu, 30 Oct 2025 11:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761825547; cv=none; b=IgKVN9JNe5bBXCFK3dGb2F8rVU7qQL+FeMIDPviNdRDfAmirAXBCeYOuBLPweH0eKFJsUj+KULzMWogsvHb6jOSIsYIf2yZ1jSdx5HDdT1IK14n0h/7aymvsxz6fjRAGFB3Xqvp00jqN42b4Pk5ZIlC9VwszGrB3Lx3A8TxmtCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761825547; c=relaxed/simple;
	bh=FIu+eNgNwmuRctJyoD8MfT8mI+bVyHbDd5nRW36Y6hI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gtooM+7Lh0hIaDZfmmyRJHcQZnm4d3NpfJXmmkbIcgJFr+Fgqg3IYFyEa0iOyjoKdmCBF5EoFb0LnzQv/gQ5ADRPW27qKwawceuo0Jn1alQQyK06IgjQPOJrxiDybKL3YUB7b+ZGZVi73Gu6kZFImkEdMSJkg3gFMD+0HqySt7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=VXGx+F7w; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=QeMo81b9; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=DbVLR1uv; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=sM/3a2ws; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id B18361F788;
	Thu, 30 Oct 2025 11:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1761825543; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fuFTLWT5mgIzPyXQ0odFzFXczzPc2pyComr27uQm3YI=;
	b=VXGx+F7wCxsWa2zCBJQJBsguI89P/MJXjHMqAIhhOWvRd6EFYK+UZyUJBsxEFGIehB/2vJ
	lDE8Hdh86N3RsZ1kazH8jo7rQ2QM8dzjCGFwcYcKavLRsS3gt9s8GcJjzU3XzfGF3X7Xn5
	hxGFDTDjm01qph59eXPzdEHroI1KAO8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1761825543;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fuFTLWT5mgIzPyXQ0odFzFXczzPc2pyComr27uQm3YI=;
	b=QeMo81b9rtPXCeSMgedpjYGz5x+rJ1NI5iRBAaQ5+3jU6jtWMiQTpoZNx91Qgqik8xETjC
	yWDe0FP6yWU3yhAg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1761825542; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fuFTLWT5mgIzPyXQ0odFzFXczzPc2pyComr27uQm3YI=;
	b=DbVLR1uvos4zVgnMXQ96gOgjHqudJspL2ZAQ7OzVjAODCAaDYjjtFNP8UkDjbXixKzoey4
	COrAjUmwCrd77TuyWySl1z1YheqA/+vHg5xcgn9BopAR/EsnXwNzA3t9jgxNBanrS0csHU
	b+V09BNkee/AGh1BNScbiKLTf9K5uSc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1761825542;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fuFTLWT5mgIzPyXQ0odFzFXczzPc2pyComr27uQm3YI=;
	b=sM/3a2wsMRUJH4rxhtjwtfXmG2vuaFgjS1HVuXbStGuW1ttZFrSZDS6njQEYIkd6RLWn4s
	8l3mWt6/V8ZuMDDw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A77F31396A;
	Thu, 30 Oct 2025 11:59:02 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id zFPfKAZTA2n7CgAAD6G6ig
	(envelope-from <jack@suse.cz>); Thu, 30 Oct 2025 11:59:02 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
	id 38813A0AD6; Thu, 30 Oct 2025 12:58:58 +0100 (CET)
Date: Thu, 30 Oct 2025 12:58:58 +0100
From: Jan Kara <jack@suse.cz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Jan Kara <jack@suse.cz>, 
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v2] man/man3/readdir.3, man/man3type/stat.3type: Improve
 documentation about .d_ino and .st_ino
Message-ID: <zb4rkj5ql32ddtdojv6ina27xjqg6s27o43m7snxwv5eigwmgg@zveelok53sg7>
References: <h7mdd3ecjwbxjlrj2wdmoq4zw4ugwqclzonli5vslh6hob543w@hbay377rxnjd>
 <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7cce7dac8fb57608d71b073f8a3c94532e5cb688.1761693028.git.alx@kernel.org>
X-Spamd-Result: default: False [-3.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	MID_RHS_NOT_FQDN(0.50)[];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_EQ_ENVFROM(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.com:email]
X-Spam-Flag: NO
X-Spam-Score: -3.80
X-Spam-Level: 

On Wed 29-10-25 00:15:31, Alejandro Colomar wrote:
> Suggested-by: Pali Rohár <pali@kernel.org>
> Co-authored-by: Pali Rohár <pali@kernel.org>
> Cc: "G. Branden Robinson" <branden@debian.org>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi Jan,
> 
> Would you mind reviewing this?  The thread started here:
> <https://lore.kernel.org/linux-man/20250525103344.fe27ugiytfyoadz5@pali/T/#u>.

The changes look correct to me but the wording is a bit confusing. Let me
try to suggest some improvements.

...

> diff --git a/man/man3/readdir.3 b/man/man3/readdir.3
> index e1c7d2a6a..368e98e6e 100644
> --- a/man/man3/readdir.3
> +++ b/man/man3/readdir.3
> @@ -58,7 +58,27 @@ .SH DESCRIPTION
>  structure are as follows:
>  .TP
>  .I .d_ino
> -This is the inode number of the file.
> +This is the inode number of the file,
> +which belongs to the filesystem
> +.I .st_dev
> +(see
> +.BR stat (3type))
> +of the directory on which
> +.BR readdir ()
> +was called.
> +If the directory entry is the mount point,
> +then
> +.I .d_ino
> +differs from
> +.IR .st_ino :
> +.I .d_ino
> +is the inode number of the underlying mount point,
> +while
> +.I .st_ino
> +is the inode number of the mounted file system.
> +According to POSIX,
> +this Linux behavior is considered to be a bug,
> +but is nevertheless conforming.

I'd suggest:
This is the inode number of the file in the file system containing the
directory on which readdir() was called. If the directory entry is the
mount point, then .d_ino differs from .st_ino returned by stat(3type) on
this file: .d_ino is the inode number of the mount point, while .st_ino is
the inode number of the root directory of the mounted file system.
According to POSIX, this Linux behavior is considered to be a bug, but is
nevertheless conforming.

> diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
> index f3c312bf0..b87195766 100644
> --- a/man/man3type/stat.3type
> +++ b/man/man3type/stat.3type
> @@ -66,7 +66,21 @@ .SH DESCRIPTION
>  macros may be useful to decompose the device ID in this field.)
>  .TP
>  .I .st_ino
> -This field contains the file's inode number.
> +This field contains the file's inode number,
> +which belongs to the
> +.IR .st_dev .
> +If
> +.BR stat (2)
> +was called on the mount point,
> +then
> +.I .d_ino
> +differs from
> +.IR .st_ino :
> +.I .d_ino
> +is the inode number of the underlying mount point,
> +while
> +.I .st_ino
> +is the inode number of the mounted file system.

Here I'd suggest:
This field contains the file's inode number in the file system on .st_dev.
If stat(2) was called on the mount point, then .st_ino differs from .d_ino
returned by readdir(3) for the corresponding directory entry in the parent
directory. In this case .st_ino is the inode number of the root directory
of the mounted file system while .d_ino is the inode number of the mount
point in the parent file system.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR

