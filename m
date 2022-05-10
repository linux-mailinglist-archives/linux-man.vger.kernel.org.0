Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FE49521FE0
	for <lists+linux-man@lfdr.de>; Tue, 10 May 2022 17:48:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346615AbiEJPwn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 May 2022 11:52:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347222AbiEJPwG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 May 2022 11:52:06 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDA94280E06
        for <linux-man@vger.kernel.org>; Tue, 10 May 2022 08:47:26 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id kq17so33824188ejb.4
        for <linux-man@vger.kernel.org>; Tue, 10 May 2022 08:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TDgGs9CgwXyWbub9AhjowkEjkVJeBjS3w2UHtPu470w=;
        b=BWf3C8d4lnfR8oyZMmiSG29J+xMF4byi5shsnljwByLz3ZI+tA9YQmsP2wO3AXfCLN
         2FwC+K5kV6TSxgVYPDqMHoowvhwbnvoTOQ40tdtYAFdfGW4iBRWmqdfMI9myYUzSRZju
         K90x6QomLH3PQ8C+QlMs9A5PkLTsIFFI8EnHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TDgGs9CgwXyWbub9AhjowkEjkVJeBjS3w2UHtPu470w=;
        b=foMXrlOSaruf7aqOW02N3xXC2lPrSQPS+JpKZZLVi7iQI96KqS6xXHH9CYUDYpZDJ5
         Ymph/7Sd94P1MDVdM2oCO8S8AOvs8TQesAWQxPxksHM+cyTZRAm7y1v12ysN7aJSzbz4
         ydAFknxkBsaX6NpUUiiwXn6MkF9rEnDexXpHbJcy8W3+wVO61GXdf2Gt2vazYx68VPdN
         0Ox1QUw1I/gHO8XUzjv2eyuobk/nG/l5mbAQyj4REJC8ElE2hjX9xU43rUbTaJO9tfHS
         Xig2M1z19gcaphLZ8K+7j3ltz3aw8+J8eQPBDEf9l2d4HM3CiTeJ3K1GBE9XZv88+d3t
         NOVQ==
X-Gm-Message-State: AOAM5311L3FiE+4bg2UcT94KjZ6QPSjfeBP2wnDhMAU0iqq3dSBrZgoS
        2D+/jaf1q69PL00qfKXT8pDnc0owgFwKMc1tOyu9xw==
X-Google-Smtp-Source: ABdhPJzA7XHkejv97/hBJ9ZeMnnM4WnEpIKq8Sfb7wU3wAiKmqThY4v+xIYCWjHTNRv4d3NHKBoE4Y0+Flk5e1rLhis=
X-Received: by 2002:a17:906:9749:b0:6f5:6cd:5bd9 with SMTP id
 o9-20020a170906974900b006f506cd5bd9mr20675818ejy.523.1652197645318; Tue, 10
 May 2022 08:47:25 -0700 (PDT)
MIME-Version: 1.0
References: <YnEeuw6fd1A8usjj@miu.piliscsaba.redhat.com> <20220509124815.vb7d2xj5idhb2wq6@wittgenstein>
 <CAJfpegveWaS5pR3O1c_7qLnaEDWwa8oi26x2v_CwDXB_sir1tg@mail.gmail.com>
 <20220510115316.acr6gl5ayqszada6@wittgenstein> <CAJfpegtVgyumJiFM_ujjuRTjg07vwOd4h9AT+mbh+n1Qn-LqqA@mail.gmail.com>
 <20220510141932.lth3bryefbl6ykny@wittgenstein> <CAJfpegt94fP-_eDAk=_C=24ahCtjQ4vhh8Xg+SrZbwPHs1waLA@mail.gmail.com>
 <20220510153050.cgbt3wezbvf2jfnb@wittgenstein>
In-Reply-To: <20220510153050.cgbt3wezbvf2jfnb@wittgenstein>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Tue, 10 May 2022 17:47:13 +0200
Message-ID: <CAJfpegu8d2VQ+WjfmUJ6g7YBPJsYUABt0jG5ByVh-dMt_waV8A@mail.gmail.com>
Subject: Re: [RFC PATCH] getting misc stats/attributes via xattr API
To:     Christian Brauner <brauner@kernel.org>
Cc:     linux-fsdevel@vger.kernel.org, Dave Chinner <david@fromorbit.com>,
        "Theodore Ts'o" <tytso@mit.edu>, Karel Zak <kzak@redhat.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        linux-kernel@vger.kernel.org,
        Linux API <linux-api@vger.kernel.org>,
        linux-man <linux-man@vger.kernel.org>,
        LSM <linux-security-module@vger.kernel.org>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>,
        James Bottomley <James.Bottomley@hansenpartnership.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 10 May 2022 at 17:30, Christian Brauner <brauner@kernel.org> wrote:

> But now we're in the process of extending the *xattr() calls to operate
> on mounts and filesystems so an additional getfsattr() (or another name)
> is not fragmentation imho. And I definitely don't think this would
> qualify as "crazy".

In that spirit st_dev does not belong in struct stat, because that is
the property of the block device, not the inode.

But I feel we are going round in circles, lets please not get hung up
on this issue.  Linus will have the final word on which variant (if
either) is going to go in.

Thanks,
Miklos
