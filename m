Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 392A46BC65A
	for <lists+linux-man@lfdr.de>; Thu, 16 Mar 2023 07:55:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229501AbjCPGzF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 Mar 2023 02:55:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjCPGzE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 Mar 2023 02:55:04 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E6866B313
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 23:55:01 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id o7so548787wrg.5
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 23:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678949700;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hFK4Zwr6hElMXIp9k1AR21PzpVyPuFPVFOuwWDRXBgM=;
        b=GDG0jkdf5m6vVnrXo2D5c8b0Fteg0jqae7v80/wwIQ2pnIXdObqqjRXbB6NUewqqlT
         Z1yrJQLFWo/6DEQ+lCU4K37Z9DuyauWlTNNPa1WNI1N91Cxl9/Uqlc/R+bvG96VLLoFX
         rgeXaWq8W5FRH9C3NvDTFD/wdFEIFktfhvOm6sdA7gxHg11DqNrMki1EsCDZbZ0FY95y
         pV7fvDZYp2BUYdJFpoyRe/7nKF/vngEfnyAE7wuV3MWpbAgDc3IbdwHqiQU1hshrNj5o
         Yd37ttcgigfE1QPhlqB6PhGHwb9+9FTUzvNAOpqVEz1Bl5gllQmHQqKwN75Wyu6cJVKY
         q0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678949700;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hFK4Zwr6hElMXIp9k1AR21PzpVyPuFPVFOuwWDRXBgM=;
        b=wvTKLBaZO/HtP4R/uYUkmlKNVyxJDsEUzZOIp5847ulmavGRL4NW/Zsw8gg9eDjeQ6
         B5qRBKC8MrorEEItu2Xs/dBqpIBLpYIoy9nKuDENlb7zYXBuOKHRoNMvfqXewXx6WTxr
         MkNWpjVzbXEgXGnlNdb529dmWEuYNPCZd+19UgJQiiqLVz+nIy1CxM7JqpCkOTXIhGWY
         jt5funWBtFU5kXfm5SN/u/KA/r+kCPviI1HgS8VGBh6F/CUZylBt82tbbmgdcM+yMvAd
         2tODLuFIqumpQabqpcdeEHQE+fGKVY2iErmNpqoTBpSA8Mvu6Zjuhh3H/1/OKgt0UMor
         3uug==
X-Gm-Message-State: AO0yUKVoDo7wEPnRuzfYnft0ebRQZAP5Cuo6kNWJQKznj81dzDAmv546
        ohB/jQcnrxhez27K4WcT9MYeMFtqWHw=
X-Google-Smtp-Source: AK7set8XsPmq7mrLhWGtBDj/q0YuH3nphvXiGfEh5fvXDAZoN1Kwu7laO6jpBDb6GGXm/ISx78NrWw==
X-Received: by 2002:adf:e8cb:0:b0:2cf:e3a9:c189 with SMTP id k11-20020adfe8cb000000b002cfe3a9c189mr4375072wrn.3.1678949699818;
        Wed, 15 Mar 2023 23:54:59 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id f15-20020a5d4dcf000000b002c70e60abd4sm6589418wru.2.2023.03.15.23.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 23:54:59 -0700 (PDT)
Date:   Thu, 16 Mar 2023 07:54:58 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH v4 3/3] landlock.7: Give a pointer to how to implement a
 fallback mechanism
Message-ID: <20230316.49640ba315d3@gnoack.org>
References: <20230310220851.22261-1-gnoack3000@gmail.com>
 <20230310220851.22261-3-gnoack3000@gmail.com>
 <1421ea14-dca4-2969-11b7-4a37720b9886@digikod.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1421ea14-dca4-2969-11b7-4a37720b9886@digikod.net>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thank you for the review!

On Wed, Mar 15, 2023 at 10:39:50PM +0100, Mickaël Salaün wrote:
> On 10/03/2023 23:08, Günther Noack wrote:
> > +The ruleset we have constructed requires Landlock ABI version 3 or higher.
> > +On kernels which do not provide that,
> > +the call to
> > +.BR landlock_create_ruleset (2)
> > +will fail.
> 
> One of the goal of Landlock is to avoid developers and their code to
> (lazily) error out if one feature is not supported by the running kernel. If
> this happens, a lot of sandboxing will be disabled (and then useless)
> because users don't necessarily have the same kernel as developers'.
> 
> Such security feature is not the same as a "necessary" feature. Indeed,
> sandboxing is and should be optional for applications to run correctly,
> hence the recommended best-effort approach: https://docs.kernel.org/userspace-api/landlock.html#backward-and-forward-compatibility
> 
> I agree that the man page should not be too complex, but I think teaching
> the best (default) approach should be the goal.
> 
> For the example, we can ignore LANDLOCK_ACCESS_FS_REFER but use all other
> access rights, especially LANDLOCK_ACCESS_FS_TRUNCATE. However, this last
> one should be masked if not supported by the running kernel. See https://docs.kernel.org/userspace-api/landlock.html#defining-and-enforcing-a-security-policy
> 
> An alternative would be to ignore access rights for ABI > 1 to make it
> simple, but this would not help developers dealing with real use cases.
> 
> This comment applies to all these 3 patches.

I can do it either way, but I would need you and Alejandro to find a
common ground on this.  Alejandro's stance in a previous review thread
was to only support the latest and greatest kernel:
https://lore.kernel.org/linux-man/cb3d6b3e-0c9b-635e-380a-c79e36ae8ede@gmail.com/

Alejandro, what are your thoughts?  (Happy Birthday, btw :))


(My personal stance is: I'm concerned that the man page example might
become too long if we try to add the "best effort" fallback to it, so
I would slightly prefer to explain the fallback logic outside, but
could be convinced otherwise.  I see the point that people might
cut&paste the example from the man page and miss the longer
explanation in a different place.

I have attempted to explain the "best effort" fallback on my weblog
starting from a blank slate, and ended up with the explanation at
https://blog.gnoack.org/post/landlock-best-effort/.  I believe that
most users can use a simpler "best effort" fallback logic when doing
this case analysis, but the explanation is probably too long for the
man page.)

Another alternative would be to make the example assume Landlock v2
(Linux 5.19). In that case, the fallback logic would be simpler and
the case analysis from the weblog entry collapse into a single case,
but the example would fall back to not using Landlock on Linux 5.13 to
5.18 (including the long-term release 5.15), which is also not nice.)

–-Günther
