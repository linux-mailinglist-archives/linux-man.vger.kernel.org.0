Return-Path: <linux-man+bounces-3343-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D73B1C18E
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:50:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2F4691891F71
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 07:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD0A211489;
	Wed,  6 Aug 2025 07:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VDXyjYvc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9AA18C31
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 07:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754466627; cv=none; b=Pcn6I3Y6kdBMI8Ewpc6+pOJ13LmbTZ0wG1boC5swXDABFfntljTF8UgM1LPs2P+em+RvJF/VJaNFBif3CYpmeuw35uxcO9IAwlZmPDqhFFwx13MC22UnRAiZ0V5dy0xasG9AVtrdOrRzUGmgExJ2FA1HTShLAIH7Jc+LCjCv6k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754466627; c=relaxed/simple;
	bh=7/JfY2B/AETeVSRPScbusNycljv6iUPfPndg37Bsszk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iYLfcaM6HX8jj2QgEg2RL91/QX1NSTXvkysyTeg8KQ08Vd5FGBCA2SXyRg2qroIBs5YCvUhVedqSXavbh1IA712+5JPnvnGzMf6IGdxL5trKNr8EqDXb7eKrGgNyr8T452fk2H1V/FsEH/yRC+SnbQ/vG07opPoWEi3mBqnvmlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VDXyjYvc; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e8ff3ef84d7so2790985276.1
        for <linux-man@vger.kernel.org>; Wed, 06 Aug 2025 00:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754466625; x=1755071425; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JOYBbg1AS40UsYErr7ba6KUTatTZbQzFHUdONuKWwKY=;
        b=VDXyjYvcKo6D85dPViXKRShUnwRVSxf89D4sf/lCfP89inxVWNsYNPTpboq/xn8q4R
         3IPRt3+ny6j/Uql7v+9xED4C/FCAm0zT2WxllX/i2gk9igmLyZRftFyk0HlK4XKuuo4c
         WzOMO+2v14Ww0SH+13qAs3BTHdpj61vnRycRJiaZzHE9HSpwehTeqB67/mPusYIdbsqS
         C7/Nad/HTGIH+96FnVLWhQzhte4JiReeX7/gh7HXogn2f8vOrFB/z/D1LV4RYRy0pFSy
         kN/JDrB5Kvm1N5PDOtSTyCSCKSE88EyrM+sCnDmG51vRHvQpmeAGQvp7+JZwty9HEzBR
         NK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754466625; x=1755071425;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOYBbg1AS40UsYErr7ba6KUTatTZbQzFHUdONuKWwKY=;
        b=u7cdkfLr1481gnZl8iWf8isESOVpL3U06w3/Tj4LfxL2OlN7r/hWw9Ebhp6itMajcr
         IfUVVqeun7YzSPsPHk83KLsTa80pNC2yucy35qEnxMX/qAOR+fbZ2Y6AHqsB97mxEIvD
         sNnne7pWF9jDj6BNv5N0Hd/Tg7qqBG1RDQUhKAm7OUM7QhrKGCE8+/bV0uK/Lm3YPyqf
         Zfk/N0qm5RB6fXpctJ3hkhn0VlAxq4NyhmF8mDoEg6fbpvwh8Gvx6+c1srbbuuEOv03X
         jY/FbGOPKw4oYd8tYTlbyn1npl5HjFsWGSyk+u3bw82l2W9ujSMTnqXAKNPedYdo4Y0k
         4d5g==
X-Forwarded-Encrypted: i=1; AJvYcCX8ovmwkYdwzUcKVCNwAHotERaESoFi5Z7R7dhBy9MZLvifmCAdvtXh0uj9N1uQOBmGDtPuYmaNA8M=@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyr2LWmHbtYUkpMuPsDkeRyCpN6co7wxN3XUy77ti6D4e71WZM
	/5bPHdVjpFrN4t7+Urkt+ifEO6GMT9mJ+IVW/B8xxnXQnOqyJBz10qbs
X-Gm-Gg: ASbGncu8qBL1KUYo7Jc3lftc4peckCaunR09B06SSp6qd/dQFUSgYXH2DL2lwb0wkqS
	maIdPDqJjsXjVJMtXkzsVkEDPN6PoBBO4sVaYy/C+CW0cO+mQd0X8PfD12VEFbcAf6iWOcoR6/V
	/ZaRVkBfV5gmmAVVbUCVJ8Rve5mPc4Zqs990L2E9PJGNF5kNab7fO4McXLVFSAap+xsNYaAbcQv
	pISs1BpgrPwE18bupY0EUAUivRJneWQbnQz9pDHQK5/i7IHnf3/NoSaEr6e3TLs/LlpwuucSOzU
	GNeyBSZS4MNA9UQsGsT1FxqXxSClyRgckpaOdA4qIAUfi71Fgn0d+HCKa1Yd1oyQ9SwnuQKWYLY
	BX700nbhsCLYi
X-Google-Smtp-Source: AGHT+IHgf9utmXDilMAAvqFx3CW3bZEVb4tTHSoUC073NKXcfzUrQjEm3ZJTXVIOOjYyTbIyzeQWnw==
X-Received: by 2002:a05:6902:1604:b0:e8d:d9a2:eaa8 with SMTP id 3f1490d57ef6-e902ac7cf74mr1585534276.32.1754466624720;
        Wed, 06 Aug 2025 00:50:24 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-71b5a3a9991sm37306237b3.14.2025.08.06.00.50.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 00:50:23 -0700 (PDT)
Date: Wed, 6 Aug 2025 02:50:21 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Askar Safin <safinaskar@zohomail.com>
Cc: cyphar@cyphar.com, alx@kernel.org, brauner@kernel.org,
	dhowells@redhat.com, jack@suse.cz, linux-man@vger.kernel.org,
	mtk.manpages@gmail.com, viro@zeniv.linux.org.uk
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
Message-ID: <20250806075021.ndodyx44xsyzxcu6@illithid>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3yi7vcv5q67g4heu"
Content-Disposition: inline
In-Reply-To: <20250806074619.59685-1-safinaskar@zohomail.com>


--3yi7vcv5q67g4heu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 05/10] fsconfig.2: document 'new' mount api
MIME-Version: 1.0

At 2025-08-06T10:45:03+0300, Askar Safin wrote:
> Also, when I render this manpage using "man", I see this:
>=20
> > that the  underlying  file  for  the  file  descriptor  aux  should
> > be  used  as  the  parameter  value  directly;  FSCON=E2=80=90
> > FIG_SET_PATH_EMPTY  indicates  that  the  underlying file for the
> > file descriptor aux should be re-opened by the filesystem
>=20
> As you can see, "man" breaks word "FSCONFIG_SET_PATH_EMPTY": "FSCON"
> appears on one line and "FIG_SET_PATH_EMPTY" on another line.  Can you
> somehow prevent this? I. e. to prevent breaking of API names. This is
> very annoying.

Yes.  Use the `\%` escape sequence to suppress hyphenation.

groff_man_style(7):

     \%        Control hyphenation.  The location of this escape
               sequence within a word marks a hyphenation point,
               supplementing groff=E2=80=99s automatic hyphenation patterns=
=2E  At
               the beginning of a word, it suppresses any hyphenation
               breaks within except those specified with \%.

(This is a *roff feature, not a characteristic of the man(7) macro
package; that is why groff_man(7) itself does not document it.)

Thus one might say:

=2EB \%FSCONFIG_SET_PATH_EMPTY

Regards,
Branden

--3yi7vcv5q67g4heu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmiTCT0ACgkQ0Z6cfXEm
bc5nSw/4r4jwEGm0mZJ62H53AFA2APNDzHpRg9ficf9bEIn5t+Zwmg0WPe0bIOLH
8Gah1cULU+m00CIrBGhtLG0W6yVh8m6C6CFSMPBovhyE0UOfigb4clxovtDvKO78
durtWl7/iZ9M5mw+shlcQUL1wMwoGoGFUTtCpYw0aM3hMqlTxWerxHE2RNiWapys
YszQovB3L9mbyl8uUhtxrc31JME1ZzWMAypTik8ZmHkri+xKBoJ0oK0kKIjTfWdm
4fBPOpEZwx/G2fks7mM9XLKrJzi8bcLxz607lz8jfSvOb8S9JBpYnrcf2XEA+Ne3
IESAowg/r0SYBCSBLNzv+Mfojv/zI+64sJveU8+zU1F5Vv6pqJ+rKDFXKzrSCLPS
9+mV2oydp9HOEEQSchR+4IGrlsjBJPGL74OOA0/aea8ULgDtl4xkz1m2tWXjTHbA
sMxEWF7DT/8L8PFIE73zQqjRdDN/HwtpFT/0uUw3HuIAwyu4mUYojMl0G43kOHsD
vXG2NSYG78IOG/XHJyOtu+ncsTqJVDX2Cq4t3jiEwHe7RuQdq7GkpWQBx4RwYGjE
j6A+VkAk0iN5B49tOLC3SiV5dlXP9Xz46KclXoEM1PjebcI0oHsJuPC8QYXJfZ/3
k47IbQy5M+wU8KPqRM1xBspJK7qFefFrvdp7kyfKNpQI0NfE/g==
=aAZx
-----END PGP SIGNATURE-----

--3yi7vcv5q67g4heu--

