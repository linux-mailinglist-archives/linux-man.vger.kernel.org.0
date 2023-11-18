Return-Path: <linux-man+bounces-93-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 662027EFC82
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 01:25:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9AEC5B20A2B
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 00:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1C35653;
	Sat, 18 Nov 2023 00:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WTZvQe9y"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com [IPv6:2607:f8b0:4864:20::b2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEA5810C6
	for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 16:25:38 -0800 (PST)
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-da7ea62e76cso2629017276.3
        for <linux-man@vger.kernel.org>; Fri, 17 Nov 2023 16:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700267138; x=1700871938; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MGhlad6ebqk/LGXhPYARBKp5GOsKDr9rNmZrMRGZgF4=;
        b=WTZvQe9yUdk1Ri0cqnNG0i3pfDvATMF472+mMUazSGQeL2/1u3oqt9m2cHN5x8UsqH
         vQxkuneRKL2/giX4Pv21xKfoTUEd/h3zBGe8HIxdgg1MW9boNCfEhMxyXsD38UICOVuQ
         8I0AD6Nlgy3+sAusEhuOafBj7MOQzBN1+LRaeRjYMzxUBpExEc/zCvtRsmjAkDT+yWk3
         +/3TN1ELntpPFhzt3eVUhERdR27DzSrMIza7LnRFlVqUNGi7rVTi5ETuVPg05YqUZ4P6
         dAbpAPgfAk6qVDu7NZngscWtW9n2tHquw4TYYIZJrziWr0C7YiqPxuQVZlB1/lwCVYKD
         U+kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700267138; x=1700871938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MGhlad6ebqk/LGXhPYARBKp5GOsKDr9rNmZrMRGZgF4=;
        b=PtmbIOmcM1lJ8zllIElFXrSl6t8pBBusP1VWGwFHGjAMP0MjtxkC8BaUqB5IuWIrD8
         aTTvzcfGKreopHdkPSCCPvcHQFFqaV/QqMnjWYdcfwBYQZdq+qrkfRwqkm1leXO3sSLv
         8vmU8lIfBXhpEwbP9C9ex1o6quh8WJS3jteUPsQDVza1BI3aq4kD+L60Z1yaQHP+Xa//
         JD0Xx/BVDqKtKgLZr7p69cgIDU2FuphElR/XepXwgclTdJ7y/+KwTXQsVy7pKdSTAYRx
         MG1RfKEIH0kMCwB06ntnjtDSaHahWlY8bN5oa9ikcG43lAU2WG+H/yVjuYx/YOBIaSK2
         QNLg==
X-Gm-Message-State: AOJu0YytJGdpgX8cjwg1RbC/n9+Z69hzzKRSf+SonQzwM8lSSLoRrPhF
	Unbp/wZolujFpXn5N3Rbv2Y=
X-Google-Smtp-Source: AGHT+IF5LjM8z8TuwNTyoB6AkDb59sIO641sTSkAen1Oz04RaZ5HEtKsP8A0mTiPmYOEJ/No1iVLpg==
X-Received: by 2002:a25:2d0a:0:b0:d9a:6855:14cd with SMTP id t10-20020a252d0a000000b00d9a685514cdmr1134372ybt.39.1700267137618;
        Fri, 17 Nov 2023 16:25:37 -0800 (PST)
Received: from firmament.. (h198-137-20-4.xnet.uga.edu. [198.137.20.4])
        by smtp.gmail.com with ESMTPSA id v13-20020a25fc0d000000b00da0c49a588asm680309ybd.8.2023.11.17.16.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 16:25:37 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Jonny Grant <jg@jguk.org>
Cc: Alejandro Colomar <alx@kernel.org>,
	Paul Eggert <eggert@cs.ucla.edu>,
	linux-man@vger.kernel.org
Subject: Re: Signing all patches and email to this list
Date: Fri, 17 Nov 2023 19:25:34 -0500
Message-ID: <20231118002535.812415-1-mattlloydhouse@gmail.com>
In-Reply-To: <751d2e89-809d-488c-8685-7c665beba78b@jguk.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org> <20231112112629.13827-3-alx@kernel.org> <751d2e89-809d-488c-8685-7c665beba78b@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Level: *

On Fri, Nov 17, 2023 at 4:43 PM Jonny Grant <jg@jguk.org> wrote:
> On 12/11/2023 11:26, Alejandro Colomar wrote:
> > The compiler will sometimes optimize them to normal *cpy(3) functions,
> > since the length of dst is usually known, if the previous *cpy(3) is
> > visible to the compiler.  And they provide for cleaner code.  If you
> > know that they'll get optimized, you could use them.
>
> May I ask, is there an example or document that shows this optimization b=
y the compiler? Perhaps a godbolt link?
>
> So it's a strcat() optimized to a strcpy()?
>
> I know gcc might unroll and just include the values of the string bytes.
>
> Kind regards, Jonny

See <https://godbolt.org/z/e34fWrTGf>. If a function computes the strlen()
of the destination before calling strcat(), without modifying its value
between the two calls, GCC will replace the strcat() with a strcpy(). If a
function computes the strlen() of both the source and the destination, GCC
will further replace the strcat() with a memcpy(), and possibly inline the
memcpy() if the size is short enough. It will also remember the increased
length of the destination for any future strcat() calls, to accomodate for
strcpy(), strcat(), strcat(), ... chains. This is implemented in the
strlen_pass::handle_builtin_strcat() function in gcc/tree-ssa-strlen.cc.
Neither Clang nor MSVC appears to implement any similar optimization.

Nevertheless, I would be extremely wary of recommending the bare strcpy(3),
strcat(3), and sprintf(3) functions on the basis of "providing for cleaner
code". By permitting the programmer to perform the copy with no immediate
knowledge of the source and destination sizes, the functions open up a
unique opportunity for squirreling away the guaranteed sizes in distant and
opaque parts of the codebase. And this antipattern isn't a rare exception,
but shows up in nearly every library that makes extensive use of the
functions.

Thank you,
Matthew House

