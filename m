Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1CF47801ED
	for <lists+linux-man@lfdr.de>; Fri, 18 Aug 2023 01:50:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349138AbjHQXtq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 19:49:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356359AbjHQXta (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 19:49:30 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 309263C1F
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 16:49:07 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3a812843f0fso204368b6e.2
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 16:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692316146; x=1692920946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JVdzhwLRMU+IjYfRvejwcex0Z/v4TcUCLCfz4tmEGV0=;
        b=nP5NVHJXBKcMuHHxaQAlcrEXFKHZAHfKEXd5pyr/j1GUrDGKqTdhOh8J1JbZ5zwBT5
         050zxjXBSKi3H5NOqjC2vovu11paHqdhP4vF4hKdlwB/iteiURGEB4UPCnK6DR55S1Jj
         GOOGP38DxXP5dWVmQVuIzaxvedsPjxDBjS0b4azAhczaW0KCtOeU1Ko5F7y82asPrASZ
         QPCyjjcCugFJ2G0nO1UpSBk++R/QTZq6VDsHTIRiiQn68yY4NbwmBSKI2Z0gwRXQeO7j
         5gjcAEwyUTYOnnd13qieUwSZM8d40SWdy/6zj/w/UFCErkRITShCiSiz9bnDRH5fbSvA
         aeXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692316146; x=1692920946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVdzhwLRMU+IjYfRvejwcex0Z/v4TcUCLCfz4tmEGV0=;
        b=VipPDAuClhTDwzhOZIcXX47fdH2Q6VPbr+Kx3s1KU7Nyi/gxIPyRN+W4E6zPLL1OHw
         t6mgXnCF0PIWfgeCS8bJh4WSk4+K9CWU91+iyI9qM9vXlx19AdnyEXcng8dmqbgJiGSx
         LjpoImG8TmG20eDPrOOIspGW4K+ZyAmWhWHyL+Mv71WP14/H7u06IIcStuZQvSzdMSuy
         u+mRJ6GUOEtyEoql2CEr0ymvgKKFrgd9BUmZzRNu4RgODPVsEIMa8Py3ke77Zfk0AU7d
         5ffN/BXc7XeSvGZ1+iS7qhP2DauvmRQgROn42v83U+nskBNptGFo7capOWo2ERJ7iPdE
         6X+Q==
X-Gm-Message-State: AOJu0Yxr9z3RREsnPLeFM26FEVENXL8HfclYH8uc82re+p4tVrHPF6e8
        ZEEydmDxDqixvoEDVobOGtS0Eye/Ufs=
X-Google-Smtp-Source: AGHT+IGM8skJT/spGJpUmaXTbm/8vkKzqrgWV7hz+ShOz/xONDn0RuUK56iePKXfiQbegYcUzEGGAg==
X-Received: by 2002:a05:6808:219b:b0:3a7:543d:9102 with SMTP id be27-20020a056808219b00b003a7543d9102mr1279389oib.39.1692316146052;
        Thu, 17 Aug 2023 16:49:06 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bh19-20020a056808181300b003a7cccd33e8sm367420oib.5.2023.08.17.16.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 16:49:05 -0700 (PDT)
Date:   Thu, 17 Aug 2023 18:49:03 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Eric Blake <eblake@redhat.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man-Pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Message-ID: <20230817234903.qffupzohqyjslsyf@illithid>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="cjplyar33ms2ag6k"
Content-Disposition: inline
In-Reply-To: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--cjplyar33ms2ag6k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-08-17T10:23:55-0500, Eric Blake wrote:
> | diff --git a/Base/Text/Functions/getlocalename_l.mm b/Base/Text/Functions/getlocalename_l.mm
> | index 13af2a5..339bfc5 100644
> | --- a/Base/Text/Functions/getlocalename_l.mm
> | +++ b/Base/Text/Functions/getlocalename_l.mm
> | @@ -12,7 +12,9 @@ const char *getlocalename_l(int \f6category\fP, locale_t \f6locobj\fP);
> |  .sE
> |  .yE
> |  .mH DESCRIPTION
> | -The
> | +If
> | +.Ar category
> | +is not LC_ALL, the
> |  .Fn getlocalename_l
> |  function shall return the locale name for the given locale category of
> |  the locale object

Thanks for the peek behind the curtain, Eric!

I infer that the Open Group's use of mm has an extensive layer of
bespoke macros supplementing it (not really a suprise).  _None_ of the
macro names we see above appears in Documenter's Workbench troff 3.3 mm
or GNU troff.

Regards,
Branden

--cjplyar33ms2ag6k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTese8ACgkQ0Z6cfXEm
bc478A/8CX4YV8ttQ2kO5NwLBB23kXafUVv3xje5TFwjmWyuVxkekq8/W3Hbzds5
RvrPN5BCjXR4rHq1Zo+LT8kXNjR12tlCkIErcCM0UohommoqeiDpvbwqDYmAm69H
iYFLG4ZxRBu0GfWbdwZ0Ky2zXcnB8InbqRKN0lFdhC/c0ODSbut14veOYeYZMC66
UE/NVBJMNagWDj4sPay998TeAGCMHdi4mS6I41wEJjbudT94Dy6qlRfmZOpkSdAv
d47FwPP9vIjbDjB9dsbS8mY09xSH1gbqYp22s3IeR4ABFH+/hZc3/bdx43k7xqvb
UCzlY+bxCFBFNJZ9CYxmYdObqAhAJskUVvEKpx7RVtsCJIqRod6fGFglmSY63WRj
/GGqQ69PUR0xq6t2Q70oMBOcNV/CRJTSjkqkNbcZVTTptrTkMv/6sR635nOgFROZ
uHxRwjQY6bGhC4vqX+rSd73ZlJsbDpjtctpK6IfOVQUO/2xft+xhQSUi9kun9Ams
7OC56QqM4TfAnRFPULpJJDqPqkkoC8SRx9QKXpcgx6R+YCjDYfP4X8L6S6rSobWV
aJEwKEA6QgKU6am/wAaaBwPj/IDoWy7mRikvkFMXpKS6z14uvbwTLuoF3TzSgNqG
Fr/YFvZSy2GuXC7aDjRsFXYOIp3wytve4jh8QojcRWHlw+MKX5w=
=Zqjx
-----END PGP SIGNATURE-----

--cjplyar33ms2ag6k--
