Return-Path: <linux-man+bounces-2702-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7D1A76346
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 11:38:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 85C5D3A7CC4
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 09:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1C41D54D1;
	Mon, 31 Mar 2025 09:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cZYh7UCO"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B74241760
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 09:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743413889; cv=none; b=NNC+fdUsZtXQoNPqkyPL2eas6MN7J1ISGbWd3xjuDIcBKh3AoNQJoiAHRq9kBQb+tnVKCc/4bA/HAmU2JByJqb3EnY5AuzffnktPYJW5gW2oql7spr0UJ6a6KIbXMkzYdSfCC5GPvVVl9lhmouvsl/kTfU8KR0SnHpxwN4+fkCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743413889; c=relaxed/simple;
	bh=CVR4v3BU7V7HO6ANWOkxs+6DjS7+0OodjCG81/b/xgk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L7UwgqbmavQhfVzHJgQZXLcsUCQz8yqskj3ISqtDkWZCehqy8iLT1wJwFGtxgeX+Q1EbjXuX/XeEyHbUcNSz2SDRJIzTMo2dFSSsili6VT3yAjbP3nLb4CAcReRlp0Rdx+3xWSHYnnEujvS5T31uff3KFFPVDZReZ/7oL17MLJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cZYh7UCO; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e61da95244so7895243a12.2
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 02:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743413886; x=1744018686; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G0siWX7WaH6IQzo9vuj8jkGr1Zn91exZDU8M+SSBoAs=;
        b=cZYh7UCOcoiCd98eiXFGvQtqD4CsnX+96la0jGZQFkQsg6/o30i2thIBBSUXjyZKza
         UhD47cl0BVxtjlT8JkaYF6/ONN+aTzHutKQoGSLgrb5PdMyuqg04t//v/PfBbMr2Q5Hf
         KFziO030Y/9GTIKzagSDcIKe9dW108ulLC2iyO5KZpk7bSJVGD7x+kbXCRW/sR1/yEEK
         lWkWygaQ30iF0lmAOdWRN5i2MivgUVP49bXj15u7TzGNduy3BMN2BnrHNqgSBR/NYHu0
         ztPgfKIxXDLBc0qEiN6q/aW6uvhspLi0032TfagL7jj+LOHPTlLURkKbzLxDEfgHe0Zi
         PmPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743413886; x=1744018686;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G0siWX7WaH6IQzo9vuj8jkGr1Zn91exZDU8M+SSBoAs=;
        b=fHg4JZN1GlWKUUG72ooCUgCSGFDrq4kHwO0GzCtImw/WPR2A06eb/DgBbUV1+HDR+5
         DEawFtMtDF9TV4VS7IkeRSE/aYDEcWhXUSueQfWDkrFll7/V9Z4rgg7ikM0TZvUmPLnU
         eHdogZ3u0ASLvj44BkhJnXFRuAEkFPQRNnVw08ipoX4KVdqwWmypysHMK7MeMKlTKbWA
         Oq0t8hqiymV/baXl+frACpYew+TfgmUVbV0DBTrZfuVU9rh5aOIjaeQzft3XppPm8GVF
         bZpwYiREUiFhp2r+IyFTi1fie0MO6UMs7lXjkdQllnaVR3pNk4Y3y/0+WKnW+9Heo3VF
         7zWg==
X-Gm-Message-State: AOJu0YyoUM0VSlaLonyQbwsr8Ns4lL8V+2s1rRhy5OIb9OGK4PUhJ4Zu
	PmoJJEKtXIl2dKVTmciexqmZklijy4YGtRuzKc0fG2pyjZW17Sh4mDtQ1cPSYnGfJDu9sle5iLM
	k9nYu6D1XGFYmmefZ0p+VuXX+dqo=
X-Gm-Gg: ASbGncvp37iq9B6VkWuIs26Q38AojKW7eqbDamOAhkt22pX9WaCWUu5vyr9RsLpVt4n
	jUQIzF6uZL5tulbGxMXB6gr3HTM5PHRWelx7RchJHz+tLICy4OsLmZzswq1XnkzxblyCpi4DyWt
	eYa2UNUIaiUPCZYDXzwG2JJiQ8xQ==
X-Google-Smtp-Source: AGHT+IE1qfILbniMxFCt3HFlQsCZAeg7h+yQFbB8DdYM4Oj4N72ADuceeO1zRNU8bDmvIXfhgHoZB5D4e55nQFSvTfo=
X-Received: by 2002:a05:6402:3595:b0:5e4:c532:d69d with SMTP id
 4fb4d7f45d1cf-5edfb466a3emr7609249a12.0.1743413885277; Mon, 31 Mar 2025
 02:38:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250331081642.1423812-1-amir73il@gmail.com> <as3iyfw75ptjp6facwtrr2hou2r2l3oxsbl7ylxzi3ipolcs2j@l4j5dnclusxu>
In-Reply-To: <as3iyfw75ptjp6facwtrr2hou2r2l3oxsbl7ylxzi3ipolcs2j@l4j5dnclusxu>
From: Amir Goldstein <amir73il@gmail.com>
Date: Mon, 31 Mar 2025 11:37:54 +0200
X-Gm-Features: AQ5f1JpeqGKWN3uSwq_Si6TvrX49HF0KB5sVEtCuwZEOSvLfFh9IUlmrN9CV9A8
Message-ID: <CAOQ4uxgnA13ry5urry2-3CeWghz7tq9cKcZZXpH+Z1fk+tP=bQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] name_to_handle_at.2: Document the
 AT_HANDLE_MNT_ID_UNIQUE flag
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 31, 2025 at 10:38=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Amir,
>
> On Mon, Mar 31, 2025 at 10:16:41AM +0200, Amir Goldstein wrote:
> > A flag since v6.12 to indicate that the requested mount_id is
> > a 64bit unique id.
> >
> > Cc: Chuck Lever <chuck.lever@oracle.com>
> > Cc: Jeff Layton <jlayton@poochiereds.net>
> > Cc: Christian Brauner <brauner@kernel.org>
> > Cc: Jan Kara <jack@suse.cz>
> > Cc: Aleksa Sarai <cyphar@cyphar.com>
> > Signed-off-by: Amir Goldstein <amir73il@gmail.com>
>
> Thanks!  I've applied the patch, with some minor amendments:
>
>         diff --git i/man/man2/open_by_handle_at.2 w/man/man2/open_by_hand=
le_at.2
>         index da0129dee..47405b118 100644
>         --- i/man/man2/open_by_handle_at.2
>         +++ w/man/man2/open_by_handle_at.2
>         @@ -127,7 +127,7 @@ .SS name_to_handle_at()
>          .I flags
>          argument is a bit mask constructed by ORing together zero or mor=
e of
>          .BR AT_HANDLE_FID ,
>         -.BR AT_HANDLE_MNT_ID_UNIQUE,
>         +.BR AT_HANDLE_MNT_ID_UNIQUE ,
>          .BR AT_EMPTY_PATH ,
>          and
>          .BR AT_SYMLINK_FOLLOW ,
>         @@ -153,11 +153,11 @@ .SS name_to_handle_at()
>          contain the
>          .BR AT_HANDLE_MNT_ID_UNIQUE " (since Linux 6.12)"
>          .\" commit 4356d575ef0f39a3e8e0ce0c40d84ce900ac3b61
>         -flag, the caller indicates that the size of the
>         +flag, the caller indicates that the width of the
>          .I mount_id
>         -buffer is at least 64bit
>         +buffer is at least 64 bits,
>          and then the mount id returned in that buffer
>         -is the unique mount id as the one returned by
>         +is the unique mount id as returned by
>          .BR statx (2)
>          with the
>          .BR STATX_MNT_ID_UNIQUE
>
> The most notable one is s/size/width/.  In C23 there are the concepts of
> the width of a type and the size of a type.  The width is measured in
> bits, and the size is measured in bytes.  Let's be consistent with that.
>
> I have also proposed a new set of operators for ISO C2y, which are
> _Minof, _Maxof, and _Widthof, which yield the minimum and maximum values
> of a type, and its width in bits.
> <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3518.txt>
> The C Committee seems in favour of that proposal, and I expect it will
> be accepted in August.
>

Thanks! I did not know that.

>
> Have a lovely day!
> Alex
>
> P.S.:  I'm not using my @gmail account anymore.  Please use
>        <alx@kernel.org>.
>

Fixed my script.

Thanks,
Amir.

