Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E922F6A6060
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 21:30:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbjB1UaD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 15:30:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjB1UaC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 15:30:02 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D6F61284E
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:30:01 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id cy6so45227838edb.5
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 12:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677616200;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=f2yL8FGFUJ9GBn3+pv7NQVXhdr+j/TmA5x5j27C8lnI=;
        b=k/u9Pho2mG/AyeE8yLoNWoY14hOKyjpvIl+4w4/wZea53lydZzv32UHicF2QQ9Olzj
         RXRI3CRjbR9JdyQdA4xc1UbyJXpg6d+khSiigT0p3EHADGKRpzjR5TmBISVHA3BywIAt
         RGRQoCMyrepoL2HZV4VHgkJ7LFDC1y2vYFvfzm7+zU0JjBoG2hM6i7W/4Nz2RAD8dCZ6
         Blbg3HvJypPfqONNa/8upBMT+eRdSI0ELk0BSTxSiZmQAMO5sgY3C3n5iUb54U2CBKxb
         xlffg/sBB3bPIsjy+uVZosmAGZH+od/nbwcb2eAmD0B+AsmyZ2vtSkpR7U8bLZm25j8W
         BtiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677616200;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f2yL8FGFUJ9GBn3+pv7NQVXhdr+j/TmA5x5j27C8lnI=;
        b=4eoMzgy1HbVG7XRBVO3H9fTpppIWSc5nmaC+X0ByP+Ru1Cx2KowTOY7q/FuJcLA1nr
         +1P782YTlXD5fRLB6TtNSPw7/m/lLZ9DLS34BBUPh1oC+a5NCqt0cK8fT8zh2iYjOZPr
         F3AlBi4M+aaFXvFXPi/mpqcaFvVhZlNUmkjNFOquDBXzuNVx6tuj1I1xgj3LuV6ko3QI
         q8ws+0yLdAz21LTIl8Tyamu5iKKV/0y2nE2AO1PrEWmy1B1DfWno6fMjguW7qtBbudkr
         SnylEQ4FlYyY6pv74Zo/SQtwmoK/wzlfy4oXirjcB6RAbGm5PJmYBgoYnLu1U2ElwA6n
         biyQ==
X-Gm-Message-State: AO0yUKVzRR6bLiscyr1EsrIQpRKJowZE1YnxU99JyCz96Sxb9eIqOdnh
        gQJzmj1FO4BkjzgpFJE2YKM=
X-Google-Smtp-Source: AK7set8v5j3lra+V3EPJh1lsePlCDuYO5eKRSVdOZPM9wWUfm0Zok+4N+X0FNpx5tQUmGtQ6GJzxwQ==
X-Received: by 2002:a17:906:7084:b0:8b1:3009:536b with SMTP id b4-20020a170906708400b008b13009536bmr3970766ejk.29.1677616199782;
        Tue, 28 Feb 2023 12:29:59 -0800 (PST)
Received: from localhost ([2a02:168:633b:1:7c09:9c3b:256e:8ba1])
        by smtp.gmail.com with ESMTPSA id kb16-20020a1709070f9000b008cae50b0115sm4843915ejc.87.2023.02.28.12.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 12:29:59 -0800 (PST)
Date:   Tue, 28 Feb 2023 21:29:58 +0100
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     =?iso-8859-1?Q?Micka=EBl_Sala=FCn?= <mic@digikod.net>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] landlock.7: Document Landlock ABI v3 (file
 truncation; kernel 6.2)
Message-ID: <Y/5kRnddGTSquwxl@galopp>
References: <20230221205023.2739-1-gnoack3000@gmail.com>
 <20230221205023.2739-3-gnoack3000@gmail.com>
 <0dd34ee2-c86a-7f73-0d5e-814f2e460476@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0dd34ee2-c86a-7f73-0d5e-814f2e460476@gmail.com>
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Feb 25, 2023 at 12:31:38AM +0100, Alex Colomar wrote:
> On 2/21/23 21:50, Günther Noack wrote:
> > +Open a file with write access. Note that you might additionally need the
> 
> Again,
> please use semantic newlines.
> 
> Also,
> roff(7) requires two spaces after period in source code,
> to detect sentence endings.
> I say this as a curiosity,
> since due to the requirement of semantic newlines,
> we always write a newline after period.

Applied semantic newlines.  There are no single-space sentence ends left.

> > +Whether an opened file can be truncated with
> > +.BR ftruncate (2)
> > +is determined during
> > +.BR open (2),
> > +in the same way as read and write permissions are checked during
> > +.BR open (2)
> > +using
> > +.B LANDLOCK_ACCESS_FS_READ_FILE
> > +and
> > +.BR LANDLOCK_ACCESS_FS_WRITE_FILE .
> > +This access right is available since the third version of the Landlock ABI.
> 
> Maybe it's simpler to say Landlock ABI v3?  That's usual convention in
> software, so not using formal English for that is not a crime :).

Hm, I took that sentence from the kernel documentation,
and I would like to avoid deviating in minor wording aspects.
https://docs.kernel.org/userspace-api/landlock.html

I would be in favor of "ABI v3" as well though, for brevity.
Mickaël, do you have a strong opinion on this?

Thank you for the review!
–Günther
