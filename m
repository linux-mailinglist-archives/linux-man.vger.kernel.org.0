Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE4356A0425
	for <lists+linux-man@lfdr.de>; Thu, 23 Feb 2023 09:48:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229745AbjBWIsr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Feb 2023 03:48:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbjBWIsr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Feb 2023 03:48:47 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C01C37F29
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 00:48:45 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o4-20020a05600c4fc400b003e1f5f2a29cso9226812wmq.4
        for <linux-man@vger.kernel.org>; Thu, 23 Feb 2023 00:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/GcBkLZlzExrotTCJBBD6qLlWHDg0PKUbO2mHxbINTM=;
        b=dEKODarejHPJOVMhRlbvQVzyizIL6ktz9HiSGfYDKi1EmThPZTeuI1cDQNoAQ8jRtR
         kFfKfebbCLqltbKa3BJ9S4s/so+7gBP6rM3G+LQA/7tw/zzQ+LbfmJ9HhM5B/SWyb+kv
         AH7oO3Hs6IGuvlaLT31H7MSg828zJoKeEWWt1C9M1BI6YLhW4/IP7fOpix6kcZxkpAk/
         ahQT7Lj39tC6IggY+4PwdTIrYFcjsHe3mavFJi3hySgDS8JXPZk4fkOyAGvFFImHnt2Q
         sVABG+pd55c28U3Q0iCYDMA9UMcceMO08fIut7TjDKTYbLeq6fsznjCBZgY5YHZQkrvN
         LiCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/GcBkLZlzExrotTCJBBD6qLlWHDg0PKUbO2mHxbINTM=;
        b=YrdecyH+ZL/jfPmhI8LqjTon0VjMLglu9VO7BYrjeZajEVBxLid3ko51Aw1kX5f2mh
         18GJoSxDGVfhRgC8wBTyKg2Z+iTU9NzpXKgX1u1DidMV0+lS6ssjzCvYS5O/T6Q2ETxZ
         +q/o2gyBm88ZyHejU2ln0tnJfaJ5yZZ0VZyhFmco/vpq8ym6u59rM0iXwkG3CGAkWmbt
         9FMMzUkdY9VL/ayhpte/8hzCDlJyHUzl2YpKlV5u2c+Fz7iqNTzCp16Xsn1wEgFlbYrS
         F1+Q32PbAlB93vn9XRAoCcGBDdzUBc+UFjGr8gbXWFZ5Ba01vv9SDqkhAOnlHL7UtIuy
         Fdzw==
X-Gm-Message-State: AO0yUKVZ2ok/xUdUHRea2GK1IFG2Dk+rOVza2XlZwpKgpEeTw6JrXkh6
        /C0Cbd9sHOfh7tyvZjVPkMcJ9pSMXoE=
X-Google-Smtp-Source: AK7set/qnZ7t6ijiFRJyqblttLlDETP/pm6Y8ul59HDNDDqL7Cu+u3/k2BrinC6gFs4yxPz0o8V+Ng==
X-Received: by 2002:a05:600c:4487:b0:3e2:1ddf:7452 with SMTP id e7-20020a05600c448700b003e21ddf7452mr7638074wmo.5.1677142123919;
        Thu, 23 Feb 2023 00:48:43 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id az35-20020a05600c602300b003daf672a616sm8347859wmb.22.2023.02.23.00.48.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 00:48:43 -0800 (PST)
Date:   Thu, 23 Feb 2023 09:48:42 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] landlock.7: Document Landlock ABI v2 (file
 reparenting; kernel 5.19)
Message-ID: <Y/coag7XQRIRDK0h@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-2-gnoack3000@gmail.com>
 <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5495bf9a0580a049bbe5a874c57202ba@mail.infomaniak.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Feb 22, 2023 at 08:36:37AM +0100, Mickaël Salaün wrote:
> On 2023-02-21T21:50:22.000+01:00, Günther Noack wrote:
> > +The availability of individual Landlock features is versioned through
> > +ABI levels:
> > +.TS
> > +box;
> > +ntb| ntb| lbx
> > +nt| nt| lbx.
> > +ABI	Kernel	Newly introduced access rights
> > +_	_	_
> > +1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
> > +\^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
> > +\^	\^	LANDLOCK_ACCESS_FS_READ_FILE
> > +\^	\^	LANDLOCK_ACCESS_FS_READ_DIR
> > +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_DIR
> > +\^	\^	LANDLOCK_ACCESS_FS_REMOVE_FILE
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_CHAR
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_DIR
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_REG
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SOCK
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_FIFO
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_BLOCK
> > +\^	\^	LANDLOCK_ACCESS_FS_MAKE_SYM
> > +_	_	_
> > +2	5.19	LANDLOCK_ACCESS_FS_REFER
> > +.TE
> > +.PP
> 
> A line break would be nice here.

Added. (Used .sp 1 for that, as it is already used in the
mount_namespaces.7, ip.7 and other man pages.)

> > +To query the running kernel's Landlock ABI level, programs may pass
> 
> s/level/version/

Thanks, I'm removing the word "level" here.
