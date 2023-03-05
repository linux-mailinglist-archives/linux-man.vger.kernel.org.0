Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 098EA6AAF04
	for <lists+linux-man@lfdr.de>; Sun,  5 Mar 2023 11:25:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbjCEKZB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Mar 2023 05:25:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjCEKY6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Mar 2023 05:24:58 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D58614489
        for <linux-man@vger.kernel.org>; Sun,  5 Mar 2023 02:24:56 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id o11-20020a05600c4fcb00b003eb33ea29a8so3593991wmq.1
        for <linux-man@vger.kernel.org>; Sun, 05 Mar 2023 02:24:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678011894;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zdvNZUESFYdbdEiJOLgXnmhwjStNeX3StPvUWqhPj30=;
        b=h2vK6L/PXibvYsGC691D0q4SIpi1PFCLTClmLGCMOU+vEH+RUkjPjgyuuBkQcEIO2x
         qEp0OGC6rXllT6qqP2v7JRDci2fetIZeezt4+uIXnAA62HqZywhveXHw9Ltr60iHXH4H
         Bq2Xh7O5DtSE9vexd1lEJRUQuAoopIm2udilwDxUDEJ2b0TTIHzW5kuVzikMhSTF1XYz
         wP96IZ3EtwDvvBXz0dp4gSEnbdaKT1MwFGEzwO6ueh4qPqkcHS5Ltrh+uGl2aPcuP4vK
         cLSLpXiryuzBnuu3ybxNZYqgBlvA+AMoUq08osRCBT+eOInhmwiz4q2K1HNGpiw+KVV1
         ySnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678011894;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zdvNZUESFYdbdEiJOLgXnmhwjStNeX3StPvUWqhPj30=;
        b=aq4ebxWnBSX0hNqjkeUYYS0jPpOaiT4exBwLLbKpVe70aFzsAzelf5gbx51Bm9ZuVV
         39S9lwL3Fuh8yLQX9ZbjgY3Dw9BbIzC8QqWvSOUNyG+zKKjJgimDyrejqswQaPXJmC9N
         u6cU3pBvCuDxC1HXEiasipp4nYU64+FAafTlE/OW/hkljwUW8Bo+EnVHocjyMlCHQyUD
         GX5AZVMO/FAoJrrhnmCEMJyBNOX0UzR31pmQlfG/xiBbGui2aSNlHIv0L1TU5X7WdFNl
         uR48gcQFBtHEU2Z3XJz6PQPJYstIfKG/7OjcVQvrpKERThDr/H8yPaj7zs56WwF9a9AA
         BNhA==
X-Gm-Message-State: AO0yUKU0t3G9HoidR6WXA9yiBHz2qyfU/3BUH57MjaiOgHJWIQ0ltVMS
        zVCfip0KTlc8lCFUGOiowXXpZ4IAYbQ=
X-Google-Smtp-Source: AK7set8Irn0IfGecr0tz6Ukzi8gRa3EmxCZPMlKTiyRXZr5JMI1MbQMyvfGuHyEVESyMC4CdXEGHGw==
X-Received: by 2002:a05:600c:1d19:b0:3e2:147f:ac1a with SMTP id l25-20020a05600c1d1900b003e2147fac1amr6149704wms.21.1678011894273;
        Sun, 05 Mar 2023 02:24:54 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id bg12-20020a05600c3c8c00b003e8dc7a03basm11756537wmb.41.2023.03.05.02.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 02:24:53 -0800 (PST)
Date:   Sun, 5 Mar 2023 11:24:48 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, landlock@lists.linux.dev
Subject: Re: [PATCH v3 1/2] landlock.7: Document Landlock ABI v2 (file
 reparenting; Linux 5.19)
Message-ID: <20230305.d639b17946bd@gnoack.org>
References: <20230304171607.8301-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230304171607.8301-1-gnoack3000@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

+landlock mailing list (feeback welcome)

Hello!

On Sat, Mar 04, 2023 at 06:16:06PM +0100, Günther Noack wrote:
> * Add LANDLOCK_ACCESS_FS_REFER to the code example.

To follow up on the discussion on the man page update v1 [1] -- let me
make a constructive proposal for a simpler code example for "best
effort" fallback in the man page.

I feel that implementing the full generic "best effort" fallback logic
would complicate the example too much:

 (a) examples that try to demonstrate too many things at once
     tend to become confusing to the reader
 (b) there are readers to whom the full example might not matter:
     - readers who know what kernel their software runs on
     - readers in the future or on cutting-edge distributions
       who can assume that their kernel is likely to be fresh enough

The main complication with the "best effort" logic is really just that
the "refer" right requires a different fallback logic, and this is
easy to overlook (has happened in multiple instances already).

I believe that many potential Landlock users, especially smaller
tools, probably do not need to reparent files ("refer").

We can group the existing Landlock use cases like this:

Case 1: Callers who know they *do not* need to reparent files
        can skip the "refer" complications.

Case 2: Callers who know they *do* need to reparent files
        need to fall back to no-op if the kernel only suppports ABI v1,
        as reparenting files is always forbidden with ABI v1.

Case 3: Callers who *sometimes do and sometimes don't* reparent files
        are the only ones where it's harder to implement.

I've put the required for code cases 1, 2, and 3 on my weblog at [2]
(skip to the "Implementation" section).

The complicated case 3 is what we need in the Go and Rust helper
libraries for Landlock, but it should hopefully not be needed for
most Landlock users who use it directly from C.


**This is how I think we should describe it in the man page**:

  * Define the backwards compatibility table.
  * Implement fallback logic for programs
    which do *not* need to reparent files.
  * Call it out prominently that the fallback code is different
    if the program needs file reparenting, and explain that separately,
    in the man page or elsewhere.

I believe this should cover the use cases for a large chunk of simple
Unix tools, and I would like to encourage the use of Landlock in
these.  Readers should not have to adapt the example code to work in
their program.

Let me know what you think!
–Günther

[1] https://lore.kernel.org/linux-man/Y%2FcvfmEM1XEL%2FTPz@galopp/
[2] https://blog.gnoack.org/post/landlock-best-effort/
