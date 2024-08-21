Return-Path: <linux-man+bounces-1636-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D995E95A2FB
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 18:37:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8ECAF283501
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 16:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D15D16ABF3;
	Wed, 21 Aug 2024 16:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="HdmG+mCz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF45015C129
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 16:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724258258; cv=none; b=gtqUwX5qfQ0Y2YsGVZHAlxesiB4qyxhktwLu8snFawlM68o2Ahzz4zYPx0dco+ZJvA78998yPaAW3lucj8d5Hpu/WdQELRP/eWB59NSJFYN3iE9M3N3RP+MKBHr6zhI7g+6btKWEjCmcQqs+vnPias/Vv4FcUr3TuC3cn+pxTKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724258258; c=relaxed/simple;
	bh=Mn5XeSO/FqbLQcWXRV0740QQ0DpOFjVqDudQKYcW87E=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=ba0BfO8v+TMk0ZTHaUft7IPvC3mVXjyH5VtDPjuTcM/7ndsW2JnjJp9AjeJ9Q+BvhlOmsx+/36fZmNWgJYJssr/YxHlOW3B3ckqn4cUqYcsM1ljOE3y1rGGFTnZdWbsalZUbfOdgZrUZByyUT7g8QV6g6N+1zPNko5hYAi0lB1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=HdmG+mCz; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5bee85b49c7so3340873a12.0
        for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 09:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724258255; x=1724863055; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rzBs8lMjw9Ich1W43zt5g7qEqX/cHvE0Gf4X2WGQECA=;
        b=HdmG+mCzE2jozjreBcvR7kdBnuQHvG0dPYrQ4Ms3BgN1wqYzI8o0w7bseMtkF+RYHj
         UgGtEcY+BbHpmM0cUqqQ7YCTSYRJFKMFUe4gJ257NGhiWrb/umL1vY9t/SX+XuHwLauM
         oSu9WWCWoqn2xhrY1Xcl+6s4rFIEx1vFZK3YcfZetX3EKtnG6nSks+O1MR3Sdc7cqrDa
         t9EKVBXEAKPwF6raPAJf3t9T4KbrVjoYw2zKBVzbCh6TK3hvHjHizW+LqlcifV5yN1qB
         r0uLC1TopQQWF+gY/GPn4RpdfjXf5xXjjnibGEFrW1hvtjIkJIq43R8QXS6v+ynkLOwi
         +KBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724258255; x=1724863055;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rzBs8lMjw9Ich1W43zt5g7qEqX/cHvE0Gf4X2WGQECA=;
        b=B2JTT0SSAPo2Ju7XqulSIJEwnI3vyHmVqM0S22rMqdoAJlfBW7kv1i43pFBK+WaXpM
         1U+uxcnqZihVNCtDjW+5iVf2GduKHTrXTB3XPYYVSEISia90/3dgK9+U322vJEQ3YIsq
         GwrO47HjKcDLMwYnv79Qz7fQHpgZhc4QdFHOvbjLFtQcvUbv603N+SCk6gTCsf7eyOUM
         XZWvInjqosIJeIKspyiApjxpyeG0Av+D/uuFBCP+q7+SqL3sz1kVD315nc/z4gyYyTld
         aJbQiln097Lx7lI1hofggOdzBHasYAKppDQMmpdoIfeCnKrGhBsrvHR6QbudKQ9p/EWC
         OePg==
X-Forwarded-Encrypted: i=1; AJvYcCUlYeUrylVGNv8gyrSenpg3MbVxFTcGIw2vFs5bdm2Kc7fUW93TOJtIuNx73LAz/JoFfDd5Gnk7T8c=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw33YTzNmjZfMuuqPnQG0i/OSjkY+uRibBdr7G9pcHFA+yPmbXY
	DrTuYwRzJVHafYEqpecC4cyv3E1+dNyQKvZYWoNaMegoA779ZMFxsuLOW1KCQVKRwgXrky1vhUm
	DOg==
X-Google-Smtp-Source: AGHT+IERy7rJkYx9tZLaYJ15512MXDrPDiyDT5JaGzfcxLKC70gDxI3KcYI1K1mBrTgJBHFP9kh3Go0At9I=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6402:40c4:b0:5af:758a:6927 with SMTP id
 4fb4d7f45d1cf-5bf1efac1admr2942a12.0.1724258254647; Wed, 21 Aug 2024 09:37:34
 -0700 (PDT)
Date: Wed, 21 Aug 2024 18:37:32 +0200
In-Reply-To: <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240723101917.90918-1-gnoack@google.com> <20240723101917.90918-2-gnoack@google.com>
 <014330e9-ce68-335e-142f-533317e6afa0@huawei.com>
Message-ID: <ZsYXx1unBN1kISK9@google.com>
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: Alejandro Colomar <alx@kernel.org>, "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	Artem Kuzin <artem.kuzin@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 21, 2024 at 06:30:09PM +0300, Konstantin Meskhidze (A) wrote:
> 7/23/2024 1:19 PM, G=C3=BCnther Noack wrote:
> >   [...]
> >
> >   Users should use the Landlock ABI version rather than the kernel vers=
ion
> > @@ -439,9 +455,10 @@ and only use the available subset of access rights=
:
> >    * numbers hardcoded to keep the example short.
> >    */
> >   __u64 landlock_fs_access_rights[] =3D {
> > -    (LANDLOCK_ACCESS_FS_MAKE_SYM << 1) \- 1,  /* v1                 */
> > -    (LANDLOCK_ACCESS_FS_REFER    << 1) \- 1,  /* v2: add "refer"    */
> > -    (LANDLOCK_ACCESS_FS_TRUNCATE << 1) \- 1,  /* v3: add "truncate" */
> > +    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  =
*/
> > +    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     =
*/
> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  =
*/
> > +    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     =
*/
> >   };
> >   \&
> >   int abi =3D landlock_create_ruleset(NULL, 0,
>=20
> Co-developed-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>
> Signed-off-by: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>

Thank you very much, Konstantin! :)

=E2=80=94G=C3=BCnther

