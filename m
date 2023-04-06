Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCFD6D91EE
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 10:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236287AbjDFIsn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 04:48:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236263AbjDFIsf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 04:48:35 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE30D83DC
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 01:48:27 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id n19-20020a05600c501300b003f064936c3eso2537660wmr.0
        for <linux-man@vger.kernel.org>; Thu, 06 Apr 2023 01:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680770906; x=1683362906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=toVgTGrtLweBpLeqbEfnfC7n7F5jzT+Ctf2NfZKYJRA=;
        b=fjxRjnlcJGSOVrZy99FNJP0Ms+3hoo6Je1LYiHmGUoOkJXyjc6EeYc+WeqbZZsWiD5
         WNbD6NNWIjtMzwz26pux2wY4so3iZZ8ke06aJFZTyekVHoWIIAxXFNhWcW7U8PBlniMl
         S70JNzbx2dPWaaO/DMVXOsM4pTeIbJ6/tDz2SHIrdqxCxZ3Ie6aFin0eEwcxj94kHfwP
         EQ3NK3etSRr0v8CE3nu/5UPbQcQVUNNWuiaG2xKhXyAX/H3dMXGVn6d4WnABAVmwDrUo
         8bjPLc+RBmEVNv31sn28XVEjQ5lKlDAgllIuwiSBn/1duvOfrvPUZ5I6xPYf3WakJQsN
         r3Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680770906; x=1683362906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=toVgTGrtLweBpLeqbEfnfC7n7F5jzT+Ctf2NfZKYJRA=;
        b=D4W3D1wE8KAUF8ZD/ZUjx2w4QbGhe0L5nHst88uoLvyoUy83n9mLoBpTXYkaf9R5Mb
         MXe6rmoA6666MU6dU1r20jiAiZAl5AJ2flbLgFHrdhnU4ilMYyUkaIvGeF0xrUd4NFwC
         63wSvQ5kDhpDhp9bjUrGoArzEZXeiuxLJ0wtnuOYrpBbc7mAWvb5eyJhXNEKRvAvD7Xr
         u5EsXHoaJLVRnZAPBqDopBcxLPs4Bs5uqvQbsg3gSj+u9PHBEKNvPdxs9Ly4EqiiNhQa
         JYpGbzKvDIfpfeuVEWjX2ou91EvE/tCJ3XvRLbacuieCB7qk0kQL1PVYvxZRVUKwrVRn
         dVdw==
X-Gm-Message-State: AAQBX9ezL20nk76Fhecm4YUP6hhrgFYYCuAX2lfRQwXn3UwS0U77nUgP
        dpQPnxZPe+xVAwCC1zIOrKg=
X-Google-Smtp-Source: AKy350Zt8d7Ne4gyvt+zaFGzhmiYMTGkDoIwwdkkeyH7hOfqnUblM7Pr3woHIvruUyDvVRVs1ASMcQ==
X-Received: by 2002:a7b:c34a:0:b0:3ef:f26b:a187 with SMTP id l10-20020a7bc34a000000b003eff26ba187mr6616015wmj.0.1680770906194;
        Thu, 06 Apr 2023 01:48:26 -0700 (PDT)
Received: from localhost (93.7.115.87.dyn.plus.net. [87.115.7.93])
        by smtp.gmail.com with ESMTPSA id z6-20020a05600c220600b003ed246c1d28sm916377wml.44.2023.04.06.01.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 01:48:25 -0700 (PDT)
From:   Gavin Smith <gavinsmith0123@gmail.com>
X-Google-Original-From: Gavin Smith <GavinSmith0123@gmail.com>
Date:   Thu, 6 Apr 2023 09:48:24 +0100
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, dirk@gouders.net,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: Playground pager lsp(1)
Message-ID: <ZC6HWJ7LmRmxD5CF@starmint>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <83sfddqvk3.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83sfddqvk3.fsf@gnu.org>
X-Spam-Status: No, score=0.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Apr 06, 2023 at 11:11:40AM +0300, Eli Zaretskii wrote:
> How do you find the description of, say, "dereference symbolic link"
> (to take just a random example from the Emacs manual) when the actual
> text of the manual include neither this string nor matches for any
> related regular expressions, like "dereference.*link"?
> 
> The way Info does it is to use the index (which should be present in
> any respectable reference document) to find description of the
> corresponding subject.  The indexing, which is done by the author of
> the document, if it's a good indexing, should include index entries
> that specify subjects the reader could have in mind when he/she is
> looking for this kind of information.
> 
> The corresponding index-searching commands of Info readers are a
> primary means for finding information quickly and efficiently,
> avoiding too many false positives and also avoiding frustrating
> misses, i.e., searches that fail to find anything pertinent.

In the future, there should be a local documentation search driven
by AI algorithms which handles synonyms and rewordings, so that if
the user searched for "dereference", they also found text about
"following a reference" even if the word "dereference" wasn't used.
Think of it like a version of G**gle running on your own machine.
Implementing such a thing is beyond me, though.
