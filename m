Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343C56E5B06
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 09:56:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjDRH4A (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Apr 2023 03:56:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231344AbjDRHzv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 18 Apr 2023 03:55:51 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 875431720
        for <linux-man@vger.kernel.org>; Tue, 18 Apr 2023 00:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1681804501;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=BCAhk+W7sMp2p6+6pAt7CGf86Hk7/vnhZegbeBcxjBg=;
        b=I92T8A10JJIRw59G2M5sbcRYrpVHjTyN7hagsC3XO1U3amqAHP76vftYk8sandk1iR+3r2
        J52uUGPuzQTQbOn+zNQjEUp5UwT8+NlGlYUPhmqFphAQag+bHMY57UfEOV1AIiTbiUDodL
        S14GDtE1hX38vHlubcpZn234P5dmN94=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-651-wCF1NxXeMH-AQM42Tli63w-1; Tue, 18 Apr 2023 03:54:54 -0400
X-MC-Unique: wCF1NxXeMH-AQM42Tli63w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D63C85C6E2;
        Tue, 18 Apr 2023 07:54:54 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.45.226.90])
        by smtp.corp.redhat.com (Postfix) with SMTP id 28792C15BA0;
        Tue, 18 Apr 2023 07:54:52 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
        oleg@redhat.com; Tue, 18 Apr 2023 09:54:44 +0200 (CEST)
Date:   Tue, 18 Apr 2023 09:54:42 +0200
From:   Oleg Nesterov <oleg@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Sergei Zhirikov <sfzhi@yahoo.com>, linux-man@vger.kernel.org,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: Checking for support of ptrace(PTRACE_SEIZE,...) on older kernels
Message-ID: <20230418075442.GA19412@redhat.com>
References: <997950238.3486335.1681414225118.ref@mail.yahoo.com>
 <997950238.3486335.1681414225118@mail.yahoo.com>
 <0d95a96b-dd49-db45-ab3c-1d9cee51381d@gmail.com>
 <20230417115009.GA906@redhat.com>
 <88991b38-26f5-e060-3a29-5f17c5fc85df@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88991b38-26f5-e060-3a29-5f17c5fc85df@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

On 04/17, Alejandro Colomar wrote:
>
> On 4/17/23 13:50, Oleg Nesterov wrote:
> > Well, from https://man7.org/linux/man-pages/man2/ptrace.2.html
> >
> >        ESRCH  The specified process does not exist, or is not currently
> >               being traced by the caller, or is not stopped (for
> >               requests that require a stopped tracee).
> >
> > so if the kernel doesn't support PTRACE_SEIZE then ptrace(PTRACE_SEIZE)
> > should fail with -ESRCH as documented.
> >
> > Perhaps this part
> >
> >        EIO    request is invalid, or ...
> >
> > can be improvef a bit to explain that this happens if the target is already
> > traced by us and stopped.
>
> I'm not sure if it's necessary.  When several errors happen at the same time,
> there's usually no documentation about which takes precedence, with few
> exceptions.

Yes, agreed.

I just tried to understand where did this ESRCH/EIO confusion come from.

Oleg.

