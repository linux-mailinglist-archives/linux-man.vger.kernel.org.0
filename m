Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC7516A049E
	for <lists+linux-man@lfdr.de>; Thu, 23 Feb 2023 10:19:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233362AbjBWJTB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Feb 2023 04:19:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjBWJTB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Feb 2023 04:19:01 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC0B12112
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 01:18:57 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id az11-20020a05600c600b00b003dc4fd6e61dso9376940wmb.5
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 01:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x+J78TBd75JAsGHjkpurPsDiHi4nBKm44SvXZ3M1Z94=;
        b=Ooz7gT+BY1QzJIRyCIwfNHDc1SRcyA32CTLo+aTWcGVk1XhFoqOFJG5YHEh8nuQo78
         3ZzH5ovltLPP0uZzYq30+0P5W8X2Z1Vpsndu4L4H1s8damnMyz6snoqY48u7B9RRE9fY
         +hKoobp7Hw6h+HVMnwcBTmSOd8dcRD/343ibUAnpuln8stn34Z8gMzHGG6QZd4BEA+4N
         pMWQqDXiP8Y8WO7rFbsQz6AHjAHtLrXUk7LDpnU+WPpfsTX6k2OxzDVDtnahfbxL+Y/Y
         FpHay0WEqnDRVIKau7SVK9r92qE6G9rtIpOlXyokFVDcW7uE1oV83+OqcslT9zAzKWF9
         AjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x+J78TBd75JAsGHjkpurPsDiHi4nBKm44SvXZ3M1Z94=;
        b=k8mWWmow1wZLzS0VcOSBCXiedvWUWrQ5NLUVVt9ovfVxctVZeGe/ay0ANW16YSxsdO
         TS+4X2ZtnaRpw1adUI66hwOWmOwq5iT80HxToFpqpHGruVkvqluK4/DSFlMvrdcuQiXw
         9fGfkfwqdgppdaLH/olL795Vq7+mJ+H6ya2E5kDtbmiGxmNyXLleV8ls5yKeIhrXDFk2
         ZD2rP3WaTdYs61RwMScqImAdaS9FBhfw24ojXCzpDZCaghKBS9BmEv/ZfD7wtU2JqSUR
         50TgqbVyR3KOPBBL3RDDQnPRG21gcdaEktt/+C6ZwOkyyZXJak4W+RnaPAwwkXc+c39J
         t9XA==
X-Gm-Message-State: AO0yUKV6R/mu42vbRWYoL9dLS65cLuwBGsa4V0fGPMbieQt28PlJU93M
        ykzoT0f1UzSgiqjCzG95i98q5u4Kxfw=
X-Google-Smtp-Source: AK7set9nLsRrjE9FN7UYTLMaEhTyH6bjEQG0M6QeJnJ3sRrPUqsykZupGrTjue1WqCYK4rZWf85UnA==
X-Received: by 2002:a05:600c:3420:b0:3e2:c67:1c7f with SMTP id y32-20020a05600c342000b003e20c671c7fmr8600973wmp.10.1677143936065;
        Thu, 23 Feb 2023 01:18:56 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id l3-20020a1ced03000000b003dd1bd66e0dsm8112448wmh.3.2023.02.23.01.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 01:18:55 -0800 (PST)
Date:   Thu, 23 Feb 2023 10:18:54 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <Y/cvfmEM1XEL/TPz@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <1bb1d91c9edd6b4b65b012827aa4f739@mail.infomaniak.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1bb1d91c9edd6b4b65b012827aa4f739@mail.infomaniak.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 22, 2023 at 08:45:28AM +0100, Mickaël Salaün wrote:
> On 2023-02-21T21:50:22.000+01:00, Günther Noack wrote:
> > @@ -242,7 +327,8 @@ attr.handled_access_fs =
> >          LANDLOCK_ACCESS_FS_MAKE_SOCK |
> >          LANDLOCK_ACCESS_FS_MAKE_FIFO |
> >          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> > -        LANDLOCK_ACCESS_FS_MAKE_SYM;
> > +        LANDLOCK_ACCESS_FS_MAKE_SYM |
> > +        LANDLOCK_ACCESS_FS_REFER;
> 
> This code example should now query the Landlock ABI version and mask new access right to make it works with old kernels.

The changes I would have to do are:

- I would *remove* LANDLOCK_ACCESS_FS_REFER from
  attr.handled_access_fs, because it is not used in the
  LANDLOCK_RULE_PATH_PENEATH and that right is implicit anyway.

- Patch 3/3: I would *keep* LANDLOCK_ACCESS_FS_TRUNCATE in
  attr.handled_access_fs.

- Patch 3/3: I would query the ABI version, and mask away the
  LANDLOCK_ACCESS_FS_TRUNCATE right in handled_access_fs if the ABI
  version is < 3.

Things I don't like yet about this approach are:

* I believe if I were to read that example for the first time, I would
  be puzzled when seeing the "truncate" right set in
  handled_access_fs, but the "refer" right omitted. This requires
  additional explanation.

* It does not really describe what to do if you actually need to
  reparent files with the "refer" right in your program. The fallback
  logic is simpler in the man page example because "refer" is not
  needed in the LANDLOCK_RULE_PATH_BENEATH rule.

  At the same time, I feel that the more complicated "refer" fallback
  logic might be beyond what would reasonably fit into a man page.
  Especially given that many users probably don't need the "refer"
  right for their programs.

So my proposal would be to change the example as described in the
three bullet points above, but to point out that users who need
"refer" should refer (ha ha) to the kernel documentation for more
details.

Does that sound reasonable to you?

–-Günther
