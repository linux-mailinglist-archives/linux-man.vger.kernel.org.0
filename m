Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 093256A04B7
	for <lists+linux-man@lfdr.de>; Thu, 23 Feb 2023 10:24:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233920AbjBWJYX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Feb 2023 04:24:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233824AbjBWJYS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Feb 2023 04:24:18 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC27521C7
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 01:24:13 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bo30so9534784wrb.0
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 01:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4ugM8A3u4biiQnO+a+HmbwwGYqxwZRtDeYKUmh+guL4=;
        b=Zpx+/BXdtLfrvSiaLX9bPyE8uSK6WeeXGOqb6SBc9tPp4krHmMxZ9+ga9dIK9ygnVS
         aT3Cl/nWvbUFpU/kHUjg29pDFqcCDlZi+KEot7XXDbtK3RUjJX/mDRsXBvQ7DyDVAmDu
         Q8xCTk7LoWpKrqeiqpwztf0TZp3d+0e7w/3NaBR/yr/2mWdimJrjMU/3Lm04M88TnoUR
         Y/mjCKd3vQUP4aM8M2UV1WVBph4/9kCCCDxWGuRGwjbp8531XGOZauHmy2/rQWa+D4Zp
         AEpngHqPi/jcHR2swnTGyFOUVYHIsRJ4Oui8sUgMu9gl+1HMR7ikLdDmS9Z6jnBAE4cl
         iTXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ugM8A3u4biiQnO+a+HmbwwGYqxwZRtDeYKUmh+guL4=;
        b=LiKJh7dFsHZFDR4RAd6DTrPB9LombXvWmAWWedqrufgL/nKESzuBBjplrWP6EYrQVp
         GNDmoPE8/kLavsCmPQ6h5+WQyGAL1wDf2rvlcln18XAay1bNqiUcaYW9CJDoy3Z4ExXH
         BqXvFwEJy2IEWj0rRbgaWTixfRy+PVS4AZXMwZRErJ149mSE8eiHzrX5spvzOmTSCe1J
         FR/ZHTAg9psWtj/+4PcowVFZmBbWpJ6JB9wmKRYmHqxUIh70Yx9vthoU3Yc2eCSPmvxq
         LmtRDzlTsbErS+d1P6vEmKOMB8X+o51U7xe/cQu4Z4jtgTulf1pdiFdKnnQ64S+SRmb/
         vKjw==
X-Gm-Message-State: AO0yUKWfbGvSnUYxW9rnCzvsag2kvQGI9R77cDpDtLSSX35tBixK0xPZ
        AW9CiqvPXJBbn/lRixwHcMs=
X-Google-Smtp-Source: AK7set//KYWFasPd+W7AdGourvYwYJsV9D09tGsf/WdJuajdKwmrwPkB4L0mXiPoR7kYFwqsBewwBw==
X-Received: by 2002:a5d:68d2:0:b0:2c7:156c:beb3 with SMTP id p18-20020a5d68d2000000b002c7156cbeb3mr513339wrw.69.1677144251793;
        Thu, 23 Feb 2023 01:24:11 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id x17-20020adff651000000b002c563b124basm9799744wrp.103.2023.02.23.01.24.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 01:24:11 -0800 (PST)
Date:   Thu, 23 Feb 2023 10:24:10 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
Message-ID: <Y/cwuoKaB5sbUqfH@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-3-gnoack3000@gmail.com>
 <9f9d462dc501b97fd8bd6afde30fc70a@mail.infomaniak.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9f9d462dc501b97fd8bd6afde30fc70a@mail.infomaniak.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 22, 2023 at 09:04:00AM +0100, Mickaël Salaün wrote:
> On 2023-02-21T21:50:23.000+01:00, Günther Noack wrote:
> >  https://lore.kernel.org/all/20221018182216.301684-1-gnoack3000@gmail.com/
> We should point to the git (merge) commit once it is merged in the kernel:
> https://git.kernel.org/torvalds/c/299e2b1967578b1442128ba8b3e86ed3427d3651

Ah, thanks. Will change it in the next patch version.

> > @@ -328,7 +401,8 @@ attr.handled_access_fs =
> >          LANDLOCK_ACCESS_FS_MAKE_FIFO |
> >          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> >          LANDLOCK_ACCESS_FS_MAKE_SYM |
> > -        LANDLOCK_ACCESS_FS_REFER;
> > +        LANDLOCK_ACCESS_FS_REFER |;
> 
> trailing ";"

Oops. Done.
