Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D6D279FD55
	for <lists+linux-man@lfdr.de>; Thu, 14 Sep 2023 09:40:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234078AbjINHkW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 14 Sep 2023 03:40:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232903AbjINHkW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 14 Sep 2023 03:40:22 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 07DDCF3
        for <linux-man@vger.kernel.org>; Thu, 14 Sep 2023 00:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1694677177;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=71HinHpOdyQGjyw49TpoDnXkBcFfjCerYDkfAk1NidQ=;
        b=T5BcHNaW0+PU46gCQZa7xf438DRrX/r+INj/MzglveLWasN5mKjOO4t0OfVji80jKXb/Oq
        L3G1MXuz4MWX9sauEMIMRILQl6hXervy8TUu43ngbM9YOtQkKaimiAGay4fWWr26/8XP6B
        kyNYpg7t60myZAN1xOMKutBxotG98ZU=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-395-M3P-9w76OFu9jJ72H9806g-1; Thu, 14 Sep 2023 03:39:34 -0400
X-MC-Unique: M3P-9w76OFu9jJ72H9806g-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-94a355cf318so51899966b.2
        for <linux-man@vger.kernel.org>; Thu, 14 Sep 2023 00:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694677173; x=1695281973;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=71HinHpOdyQGjyw49TpoDnXkBcFfjCerYDkfAk1NidQ=;
        b=m+Kk+2GmTeee/xniAZJGi10ibuaOxzVuFjz4CTceR8luZtjYIGGJsTMLC/gOvtSNvi
         BQYa8X9LICJ8t+9QM3D9AQ33zLb6t5z3u7R0/59+SMgVOAiZ8o1E54vicgVMlQmDLpvB
         RQl58Bbrjaz6TQ/2PZjnVyDG8st5/lGf2Q7WBXW/EjN/QCSreCRx04yqt9ClqkFEF/TU
         Ano8m4UvMsPv9eblc06p5NX+l+WWPZ3jiIv9Iep9PSjFVyz294CQ4V5OMrgf3Opt5R2W
         IxaYa+J4suBurtU1r0zF8L/ar3R9NbJBa/S/vP6fagnZNQCVvQaJIZTz1XSJVsW8HsWF
         vJKQ==
X-Gm-Message-State: AOJu0YxsfgCtx6KpX1LWZ7XSIaG1yNGZ9dBlPwQm2y65ssAWRKIz66WE
        66UpRHnGxtDrKhgUqnFX2ng+ufP2kNO2oZtQIBFdp/UOiLn6Z6KTpGihs3uf9cIOjB3BD/wNMbk
        1uhmzzmh26aqjJbAglpGx5eseHH2A
X-Received: by 2002:a17:906:535d:b0:9a1:f10d:9751 with SMTP id j29-20020a170906535d00b009a1f10d9751mr3962711ejo.23.1694677173716;
        Thu, 14 Sep 2023 00:39:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtw35PUnW9XMqc40ZRPpmESvG3IH0au9Oxw8l7d8LIm7wa263oV4Svva+c6Bf73FoBfdimdw==
X-Received: by 2002:a17:906:535d:b0:9a1:f10d:9751 with SMTP id j29-20020a170906535d00b009a1f10d9751mr3962705ejo.23.1694677173414;
        Thu, 14 Sep 2023 00:39:33 -0700 (PDT)
Received: from cremorrah (ip-86-49-233-234.bb.vodafone.cz. [86.49.233.234])
        by smtp.gmail.com with ESMTPSA id ce11-20020a170906b24b00b0099cc1ffd8f5sm605666ejb.53.2023.09.14.00.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 00:39:33 -0700 (PDT)
Date:   Thu, 14 Sep 2023 09:39:31 +0200
From:   =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] close.2: Suggest shutdown(2) when closing socket from
 another thread
Message-ID: <ZQK4s9zARDHAhQxN@cremorrah>
References: <717947ba515ec7b179574ca3a3577cf849199872.1692717581.git.tgolembi@redhat.com>
 <e0d5e4a4-82d4-68ae-a2c0-9c3e0b779806@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e0d5e4a4-82d4-68ae-a2c0-9c3e0b779806@kernel.org>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Aug 25, 2023 at 08:05:01PM +0200, Alejandro Colomar wrote:
> Hi Tomáš,
> 
> On 2023-08-22 17:19, Tomáš Golembiovský wrote:
> > This is another take on the ancient saga of closing sockets from one
> > thread while another thread is blocked on recv(2). It all started with
> > [1,2] and continued by [3]. It was established that this is expected and
> > long term behavior or Linux and the issue was closed by Michael Kerrisk
> > by commit c2f15a1349a7271f6c1d81361ec8b256266e1c09.
> > 
> > This is all fine and the patch covered the issue in general terms.
> > However, it does not mention the specific case of sockets and shutdown,
> > where the issue can be (at least for the read case) mitigated by proper
> > shutdown. While one may argue that such information may be implied by
> > other man pages (perhaps return value of recv(2)) and thus is redundant,
> > it seems only fair to mention shutdown(2) here as it is only rarely
> > noted in Linux documentation that properly shutting down both side of
> > the socket is a good programming practice when dealing with sockets.
> > 
> > As a test program I am attaching the program originally written by Lukas
> > Czerner. Only with small fixes here and there.
> > 
> > [1] https://lore.kernel.org/linux-man/1314620800-15587-1-git-send-email-lczerner@redhat.com/
> > [2] https://bugzilla.redhat.com/show_bug.cgi?id=650985
> > [3] https://bugzilla.kernel.org/show_bug.cgi?id=53781
> > 
> > ```c
> > /**
> >  * Copyright 2011 (C) Red Hat, Inc., Lukas Czerner <lczerner@redhat.com>
> >  * Copyright 2023 (C) Red Hat, Inc., Tomas Golembiovsky <tgolembi@redhat.com>
> >  *
> >  * This program is free software; you can redistribute it and/or
> >  * modify it under the terms of the GNU General Public License as
> >  * published by the Free Software Foundation.
> 
> No version of the GPL may be understood as GPL-1.0-or-later.  I suggest
> specifying.  But rather, we prefer SPDX license tags in this project,
> so could you please specify the license as something SPDX?

I have checked with Lukas and GPL-2.0-or-later will be used. I will post
a new patch with updated file header.

    Tomas

