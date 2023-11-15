Return-Path: <linux-man+bounces-80-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE8A7ED831
	for <lists+linux-man@lfdr.de>; Thu, 16 Nov 2023 00:29:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28F6D281047
	for <lists+linux-man@lfdr.de>; Wed, 15 Nov 2023 23:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E3C24317D;
	Wed, 15 Nov 2023 23:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WvmHtxgs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE11199
	for <linux-man@vger.kernel.org>; Wed, 15 Nov 2023 15:28:53 -0800 (PST)
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-7ba12f0856aso871246241.0
        for <linux-man@vger.kernel.org>; Wed, 15 Nov 2023 15:28:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700090933; x=1700695733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/SoE+lhB/HMER0jw8wR+DEg+thB9IFlQjRlF9A0tFP4=;
        b=WvmHtxgsGN+d9QdjZfacWU4rkBpDHcsX5iR82XKmmEA8MN41ZgH4HjZGen9F02DCNC
         7tsjeYQ4xJASNBK4Qs2pEilPAjDY05abVkbGwXzpVguu6n2dPSUjqGEsC312r9T3FEu8
         zu3uvtTzIzdR7t+O/yHVAeYWu2gMRq4+fe7fJjim1KX1zKDz9WtswZhuAPoaSgudUkgi
         vNQeqUEf56LT95gFV/Ujwi/PgiCyGZp/oWHzW5KPNQE5g3qDKj0/PBNualiFw4ehQPkG
         QXZqpA841KdhLHIbFoAVzqQiJdq8x985p27Fyhvn4RSlWRUKxO9N4bxjA6a2XCzbRzNS
         Tqtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700090933; x=1700695733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/SoE+lhB/HMER0jw8wR+DEg+thB9IFlQjRlF9A0tFP4=;
        b=YU1kWIxMnL286dUNmvgmcmftRWA8MZcFmCBcGi5OseGk9ZbHUkpBSrqsrrhfwWiGwN
         q9JYxGAPTotrAuUNJXq8Kz4en/tAQpXJ5WnLHLHNsEeVMk7P6LHR5DZuUbLi+x3vauLg
         OcHbuWqe4iyqgiokyCsyVpZpkLBPSV7Ah11jsKRTgYK5dyjWD/h1XLF0KVQfvm3fXgSb
         QeKymqcNL3MWjPPEOd0rxI0GRR7UzLihgG2hNfzib4Irf41W6IuhdOdAXEGlVLWD1vmD
         c4Y1oE6AMSw1QitCUn6ZvtWku456CIO8kBrbFq0ZXqEbpYeo5ND3sYjTivqr9Gv0EEdl
         pPGg==
X-Gm-Message-State: AOJu0YwP+46vBs5W82tcQBoieqo3bribSYlIDVQ6oOOaAnkjZl+SnHin
	KqPoNFo0kjlo4Nri1QeSqtqqFjl0uSw=
X-Google-Smtp-Source: AGHT+IGWR4WuAgts8UuietOL7qI6bYfdev+NHtASiFgh5CvoCOwGmhY+rbwrs5+g9fcD7yfCbePVUw==
X-Received: by 2002:a05:6102:819:b0:45f:6572:5ed8 with SMTP id g25-20020a056102081900b0045f65725ed8mr2408vsb.14.1700090932738;
        Wed, 15 Nov 2023 15:28:52 -0800 (PST)
Received: from firmament.. ([45.87.214.195])
        by smtp.gmail.com with ESMTPSA id m15-20020ab0138f000000b007bac8e4ed52sm447388uae.26.2023.11.15.15.28.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 15:28:52 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: Signing all patches and email to this list
Date: Wed, 15 Nov 2023 18:28:42 -0500
Message-ID: <20231115232848.693843-1-mattlloydhouse@gmail.com>
In-Reply-To: <20231115212015.6446-1-alx@kernel.org>
References: <20231115212015.6446-1-alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 6:46 PM Alejandro Colomar <alx@kernel.org> wrote:
> Hi,
>
> I'd like to ask contributors to sign their emails to this list with a
> PGP key; especially for mails that include patches, but ideally all of
> them.  Of course, it's a suggestion, and there wouldn't be any
> enforcement other than asking.  What do you think of that?
>
> I've prepared some text for ./CONTRIBUTING; please review.  It also
> depends on mutt(1) maintainers, if they want to patch mutt(1) to allow
> crypto operations in batch and mailx modes.
>
> Thanks,
> Alex
>
> ---
>
> commit f7ba049d975a4b323c8086b2fc859687e4fc1d4e (HEAD -> sign)
> Author: Alejandro Colomar <alx@kernel.org>
> Date:   Fri Nov 10 01:10:00 2023 +0100
>
>     CONTRIBUTING: Please sign your emails with PGP
>
>     Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
> diff --git a/CONTRIBUTING b/CONTRIBUTING
> index 475244c13..204e04fb3 100644
> --- a/CONTRIBUTING
> +++ b/CONTRIBUTING
> @@ -56,6 +56,29 @@ Description
>
>                   help
>
> +       Sign your emails with PGP
> +             Please sign all of your emails sent to the mailing list,
> +             including your emails containing patches, with your PGP
> +             key.  This helps establish trust between you and other
> +             contributors of this project, and prevent others
> +             impersonating you.

If this is meant to be a suggestion rather than an obligation, then I'd
prefer if it had an explicit statement to the effect that it is (strongly?)
encouraged but not mandatory. If I were reading CONTRIBUTING for the first
time, I'd be inclined to read the bare imperative "Please sign all of your
emails" as a hard requirement, and be scared off on account of not even
having a PGP key.

Thank you,
Matthew House

