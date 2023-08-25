Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F144788788
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 14:34:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243057AbjHYMeJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 08:34:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244899AbjHYMeD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 08:34:03 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF0F626AF
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 05:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1692966758;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=5wXP7X/6rZaJWONOSKjenEhS2VhNigdmZcqBn/d2VmE=;
        b=Rwxhi7AHNXplUWuOdxIO+iKUNSfM6fB/YyfgeilYklptR1LIMZ8FS99DEtfC8TL193+zgt
        7DFCwS43QV6xuN6v9TE0pVY3ehb+oembDnqtOIaIqvGWibHlVFd7yNxjoooTMcrLAS2pym
        cYLSK60iQm2iDVEBZwBUtWVsDc+zYpA=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-669--9VxQe_mNDatRzNRP61iXA-1; Fri, 25 Aug 2023 08:32:37 -0400
X-MC-Unique: -9VxQe_mNDatRzNRP61iXA-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-99c0bd2ca23so65439766b.2
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 05:32:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692966756; x=1693571556;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5wXP7X/6rZaJWONOSKjenEhS2VhNigdmZcqBn/d2VmE=;
        b=VHTiCBbspuKOv9fO3nAhBe/Lqy+5nju0RlKXl0+Ve4qWRtTNCYtYW3qmeMYYdDbdks
         /zD9Bl5VV3heFU8aZxXMjczwwjoQ7zCT74Zgyhrp90tgCko/lXx8ZWdmhZbpMeZvGTH3
         /8ecEk6506DugPJ17K4lKtwENacYKIhCmmemjUGhGnqfBDFIST34iABmA5NDKxT/eXY+
         LVFyOvubns4gRSo0FJCZ0UNx9uo0sHYQ2cDALdP33tx4brOqigNw8u2l6llRUlLVkjFf
         wb5m1kgujuirFO14KP7Kke5Kvqz8TFK1ZM6VabgdlXFaUBe0paTyNktnf8AScY5f1oD+
         KoqQ==
X-Gm-Message-State: AOJu0Yzpd377al21Nrv2xamWj/3Bz78xvXjGtyAafIrqF4HmEz3BbG7V
        w/ViabxnH/ZWzY8MgrD4u5UC6WGTTh9rszUCK5YU8fj+ahVhC6kmxy3bqP3+4nmFkxqGw6dBDXv
        5BGmpV4wDKHFj48Y4AuT4
X-Received: by 2002:a17:906:7695:b0:9a1:bd82:de35 with SMTP id o21-20020a170906769500b009a1bd82de35mr7359577ejm.3.1692966756118;
        Fri, 25 Aug 2023 05:32:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEklG7YUNLGF8PDZeA7Jqic0wa/dZ09N1NinemgNMSGeNhdg97ejTz6ywQiOan7Dt7Xd/9Jlg==
X-Received: by 2002:a17:906:7695:b0:9a1:bd82:de35 with SMTP id o21-20020a170906769500b009a1bd82de35mr7359569ejm.3.1692966755778;
        Fri, 25 Aug 2023 05:32:35 -0700 (PDT)
Received: from cremorrah (ip-86-49-234-148.bb.vodafone.cz. [86.49.234.148])
        by smtp.gmail.com with ESMTPSA id d7-20020a1709064c4700b0099bd453357esm925582ejw.41.2023.08.25.05.32.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 05:32:35 -0700 (PDT)
Date:   Fri, 25 Aug 2023 14:32:33 +0200
From:   =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
To:     Gabriel Ravier <gabravier@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Carlos O'Donell <carlos@redhat.com>,
        Glibc <libc-alpha@sourceware.org>
Subject: Re: [PATCH] abort.3: Note that the glibc implementation is not
 async-signal-safe
Message-ID: <ZOifYfs4fxIbk-NF@cremorrah>
References: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
 <ZOThpIa46irPESgE@cremorrah>
 <45b86bac-faeb-b39a-6be4-5c5f1c4bdc6e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45b86bac-faeb-b39a-6be4-5c5f1c4bdc6e@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Aug 24, 2023 at 11:07:00PM +0100, Gabriel Ravier wrote:
> On 8/22/23 17:26, Tomáš Golembiovský via Libc-alpha wrote:
> > Hi,
> > 
> > gentle reminder that this has not received any attention yet.
> I assume this is because there are currently efforts to make glibc's
> implementation async-signal-safe - which would make this proposed note quite
> quickly inaccurate

I suppose you're referring to this: 

https://inbox.sourceware.org/libc-alpha/20230803173436.4146900-1-adhemerval.zanella@linaro.org/

I was not aware of that. Thanks for bringing that to my attention.

> (though the fact it has been async-signal-unsafe until
> now still seems notable enough to be mentioned here).

Yes, even when this is fixed having a BUGS section with something like
"In glibc X.Y.Z and earlier the function was not AS-safe.", might be a
good idea.

    Tomas

> > 
> > Thanks,
> > 
> >      Tomas
> > 
> > On Wed, Jul 26, 2023 at 01:55:27PM +0200, Tomáš Golembiovský wrote:
> > > See https://sourceware.org/bugzilla/show_bug.cgi?id=26275
> > > 
> > > Cc: Carlos O'Donell <carlos@redhat.com>
> > > Cc: Glibc <libc-alpha@sourceware.org>
> > > Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
> > > ---
> > >   man3/abort.3         | 6 ++++++
> > >   man7/signal-safety.7 | 5 +++++
> > >   2 files changed, 11 insertions(+)
> > > 
> > > diff --git a/man3/abort.3 b/man3/abort.3
> > > index 0b57e10ed..827d5c9db 100644
> > > --- a/man3/abort.3
> > > +++ b/man3/abort.3
> > > @@ -85,6 +85,12 @@ terminates the process without flushing streams.
> > >   POSIX.1 permits either possible behavior, saying that
> > >   .BR abort ()
> > >   "may include an attempt to effect fclose() on all open streams".
> > > +.SH BUGS
> > > +The glibc implementation of
> > > +.BR abort ()
> > > +is not async-signal-safe,
> > > +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
> > > +in violation of the requirements of POSIX.1.
> > >   .SH SEE ALSO
> > >   .BR gdb (1),
> > >   .BR sigaction (2),
> > > diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
> > > index 3d6ddc7eb..431a22f89 100644
> > > --- a/man7/signal-safety.7
> > > +++ b/man7/signal-safety.7
> > > @@ -335,6 +335,11 @@ The glibc implementation of
> > >   is not async-signal-safe because it uses
> > >   .BR pthread_mutex_lock (3)
> > >   internally.
> > > +.IP \[bu]
> > > +.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
> > > +The glibc implementation of
> > > +.BR abort (3)
> > > +is not async-signal-safe.
> > >   .SH SEE ALSO
> > >   .BR sigaction (2),
> > >   .BR signal (7),
> > > -- 
> > > 2.41.0
> > > 
> 

