Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E53F276BE42
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 22:01:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjHAUBK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Aug 2023 16:01:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjHAUBJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Aug 2023 16:01:09 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 086C1B0
        for <linux-man@vger.kernel.org>; Tue,  1 Aug 2023 13:01:08 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bcae8c4072so1159749a34.1
        for <linux-man@vger.kernel.org>; Tue, 01 Aug 2023 13:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690920067; x=1691524867;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Uyp0c+pTG9m2NaCiZpeVDRS8Foves9koQY0uzQUrXSk=;
        b=cxGuD5Ej0zKxLnkAogJ13mlmQ4OI4pBFIOc3SqOolRHjOEWVf/z+dzL6SKngi383F1
         iF4tKNX6II53yrpvBJ/+WCkEIYVOuS3g8SsLWY7jSnsYnAK0zz/NlfggDdblt0x1gSZ7
         wNz3XHIVkvEZqyOtKaXF7xYifmAgm57wu9/7xtQtyyPvW36u3KvdcPCoVf1bOLOdw9L1
         6KP/QoaPD1q/rxgc1OohlvpaN9U6xEvAWdGNQcgZ6n0li90T5ENUoz0hFl0dcXzFQbI9
         W8gsKjzEayeWZEiKkGxhOYMSTa8Nit82wG6O0gy1H7hetum6PPfpRA9giaT4Pqrx4xoe
         ROng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690920067; x=1691524867;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uyp0c+pTG9m2NaCiZpeVDRS8Foves9koQY0uzQUrXSk=;
        b=CJwiMN5vSVOI8XPYcnStn+RFDZQnJF+VMUP0/H1weJR7ZZqE5Mfs8vQDcqb7G0i6HS
         KmPwKNS2CwDAB9wwj+pWpzVFtdr0mwBvoe67cYOPEJOvktIIBLYSuVQ8LcMSS9FKouat
         cDll90pZXpxaM0yDcpdl/z/XhslBa+JADnqCkkx7+jK+MhtepuLjHrodyB4R3Uz2uUmJ
         jQMBrhxbmoQSId2WeKUQBkqJiAckihXibVWOWLO4Mz7b2U0BJrMsgNBX6PRJCCIeUb4e
         GS/FgWSIZY4ZjTkLy/xBFkCMrWNR+q7Uu31kKA03mc8C8v1drJ/HtLD0Ntp0ylDsSjDw
         oMOA==
X-Gm-Message-State: ABy/qLbcOGi5BqS5P7rKAhaO7gJPg32+Ox6Dp4ljnsAEhhwae5NUQmFp
        f3s3WneSgOj/nZdmKxGEEFJHJHWHWoE=
X-Google-Smtp-Source: APBJJlHBMYkl5nXskid9oV4pkWMgqsdAd4v61NgDxRUM3P43epoiBEZvMiCKmny+abWgjgiz3VRWRQ==
X-Received: by 2002:a05:6830:138f:b0:6b9:62f5:ac62 with SMTP id d15-20020a056830138f00b006b962f5ac62mr11740280otq.35.1690920067184;
        Tue, 01 Aug 2023 13:01:07 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id s8-20020a056830148800b006b45be2fdc2sm5304054otq.65.2023.08.01.13.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Aug 2023 13:01:06 -0700 (PDT)
Date:   Tue, 1 Aug 2023 15:01:05 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     groff@gnu.org, linux-man@vger.kernel.org,
        Lennart Jablonka <ljabl@ljabl.com>
Subject: function prototypes, man(7), and mdoc(7) (was: boldface, italics,
 spaces and ellipses in synopses of commands, and *nix history)
Message-ID: <20230801200105.l2fpjwy7roo3km7w@illithid>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
 <20230730154541.uitln7ioq4bw6xkq@illithid>
 <02dce126-966c-b7f8-4b26-2fb6ce11b30f@kernel.org>
 <20230730161304.ywc7jyz7hlbjqpsd@illithid>
 <ZMefhujNRqiKVR9a@fluorine.ljabl.com>
 <20230731154535.iqx4zuzztcum6f66@illithid>
 <ZMgAC_-lM62BHKV0@fluorine.ljabl.com>
 <20230731222027.efuv6zetn2fh3fjg@illithid>
 <a6c65fe9-2126-73aa-7852-cf6d4f9f84b5@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zup4goi3o2qj6qgu"
Content-Disposition: inline
In-Reply-To: <a6c65fe9-2126-73aa-7852-cf6d4f9f84b5@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zup4goi3o2qj6qgu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-08-01T01:03:38+0200, Alejandro Colomar wrote:
> > My goal is that it not be obvious to the causal reader of a man page
> > whether man(7) or mdoc(7) was used to compose it.
>=20
> Function prototypes are the biggest difference, IMO.  I prefer how
> man(7) pages show function prototypes (the type and the variable are
> formatted differently).  Though I'll give to mdoc(7) that parentheses
> and commas in roman are nice.

You will scandalize some people by suggesting that bold isn't the best
choice for all literals.  ;-)

> .3 pages are easily distinguished in the first screenful of text
> without looking at the source, in the SYNOPSIS.

I think it might be tricky to achieve parity here without either:

1.  imposing eyeball-bleeding complexity on man(7) authors; or
2.  implementing the most radical of my man(7) reform proposals:
    an extensible semantic tagging mechanism.

https://lists.gnu.org/archive/html/groff/2022-12/msg00075.html

I'll see how we weather the `MR` storm before sailing into that one.

In any event I'd need to devote some serious time to considering the
shape of the problem of function declarations.  Possibly their hopeless
variability is what led mdoc(7)'s designer(s) to implement its
challenging "called"/"parsable" system of argument interpretation.

And think--C language declaration syntax has gotten _more_ complex since
mdoc fossilized around the time ANSI C froze.  Type qualifiers are far
more often used now, and attributes were, if not inconceivable, then on
a distant horizon.

But maybe that won't matter: with only three font styles available
(though we probably _could_ employ bold-italics if we _had_ to), there
is a limit to how many different sorts of things we can represent.

Regards,
Branden

--zup4goi3o2qj6qgu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTJZHYACgkQ0Z6cfXEm
bc6oShAAqZkS37ZcL/57vrChQCAHUAChzUhkIZJFg7bYyWiGdMFHxGGs6DbQayuC
WdBwrhfGqhA8iYgXAPbO/MRHE0p9lz0uENgURpjbBu3adwjMAnHac+RPQAyWwey5
DTHfCuhA3myKiYdkXSixKdE0/ZJnuzJGhyOV1x5MvPu8SkZPgBTiGr09yRYveTmG
6kFP45I/TgoTI2tpAAKfFlzSr/s9Evv3+JDemHclYcdctgSqiL3JVzn8bOC4ldoX
Qld720shDb5ewoMhhauvUdZiMHEBGw0G2fay7yuAIYfe4sxa2hsBUsurHs3s7ito
ZLUZypLEOWBQAd+Swx7llecEKTZy54gUOBYHbByjCOfFkSjLgyvAXeZKJioGQ1yY
JhwrpF+h0BodTq9qYJoKk8gi8fXUVObhJYqrmON5IN92biJRdAWQgITFbtQEFZi/
6TKoIgeO6t0yxGPqS8Z8is4ezqgi9rSN/WexGHVVNHcH4ssvxzUUXcqMtkAuHLU5
XrrhMsivlJKr1lAt0VrxkzSVaQJEfeDbyfrAvgzfCptANhgCQ6F7oBdBg+OVwD7p
3Me5o+Y2tcW8c507YVogldM6tsNVuzG7PZOG6aHJPTzCo1kMJN6XU/ycSVd6nc65
uyjM9dQMesB4kkFmkfA+hnvGH7MITMjZKFN/hTijZ3rFApN1tFU=
=euyc
-----END PGP SIGNATURE-----

--zup4goi3o2qj6qgu--
