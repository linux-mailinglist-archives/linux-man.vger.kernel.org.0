Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38878619F40
	for <lists+linux-man@lfdr.de>; Fri,  4 Nov 2022 18:52:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229875AbiKDRw0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Nov 2022 13:52:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231949AbiKDRwA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Nov 2022 13:52:00 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2092047317
        for <linux-man@vger.kernel.org>; Fri,  4 Nov 2022 10:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1667584256;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=3NUePZmuJ4OTi6KwqjSS0eCwCVYy3aVlt1IgHe978BA=;
        b=YNfgpogaWqe9ptn3dT3l16sm7kiI1msgfFyIvpx/3Y/ZcuZwiBG+dp0wfYNjzxoT/26efv
        FyEOy7jTq1EbWyhGnudbPLrZh/oK2Qd9W5qGauz9oCfCiY/PpXPd5NcA9Ua7yHsN3YCXLU
        4CjGpyw0Xhan/n85igX2X9Kc7ji4LqY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-654-tiUeFiorN6S19TBoDPJBiQ-1; Fri, 04 Nov 2022 13:50:54 -0400
X-MC-Unique: tiUeFiorN6S19TBoDPJBiQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4B9F1C006AD;
        Fri,  4 Nov 2022 17:50:54 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.19])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C56040C6EE9;
        Fri,  4 Nov 2022 17:50:54 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] nsswitch.conf.5: Current glibc reloads this
 configuration file
References: <87mt96zmxs.fsf@oldenburg.str.redhat.com>
        <787f1231-3370-dd8f-3353-e95ea293bbff@gmail.com>
Date:   Fri, 04 Nov 2022 18:50:52 +0100
In-Reply-To: <787f1231-3370-dd8f-3353-e95ea293bbff@gmail.com> (Alejandro
        Colomar's message of "Fri, 4 Nov 2022 17:58:01 +0100")
Message-ID: <87wn8ay5fn.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> Hi Florian!
>
> On 11/4/22 17:47, Florian Weimer wrote:
>> The implementation happened across multiple glibc commits, but the work
>> was completed for glibc 2.33.
>> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>
> Thanks for the patch!
>
> May I ask that you CC me in patches?  I sometimes miss patches sent
> only to the list.  (If there are any other patches from you that I
> ignored, please ping).

I'll try to remember that.

> See a minor formatting comment below.
>
> BTW, I remember some month ago having followed the discussion about
> adding arc4random(3).  Did you finally add it?  If so, would any of
> you (glibc programmers) mind sending a manual page?

It's in glibc 2.36.  I don't have a manual page yet.

Thanks,
Florian

