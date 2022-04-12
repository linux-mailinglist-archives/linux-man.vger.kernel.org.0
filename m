Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62DF74FE3DD
	for <lists+linux-man@lfdr.de>; Tue, 12 Apr 2022 16:31:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244265AbiDLOdh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Apr 2022 10:33:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350831AbiDLOdh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Apr 2022 10:33:37 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 98D2B5EDF1
        for <linux-man@vger.kernel.org>; Tue, 12 Apr 2022 07:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649773878;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=TROcujBHR6DMp2oi0T3ljRsQYeEx3TbzT5yJVlIi41Y=;
        b=BkwLuITcNHtyl1S2C6XHzVMv+bLcUHjJS/fAd3Xhw43T6mCG42iivz57Sd/L4CLDe0so6N
        4S/ptEfvFEA14c671+QPfhilzwNCMyeYd/djHT9x+IqV49l2iMVk7wnWryJG3wzVYQ4LBX
        q005aPGZB7Wbeqtp6FTNBCou9J8wzCE=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-NNPBc4fEN1--JxcrRsLaVQ-1; Tue, 12 Apr 2022 10:31:15 -0400
X-MC-Unique: NNPBc4fEN1--JxcrRsLaVQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A94F1800770;
        Tue, 12 Apr 2022 14:31:11 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.193.61])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D97DE40CFD20;
        Tue, 12 Apr 2022 14:31:09 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Arjun Shankar <arjun@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] pthread_atfork.3: Remove a confusing reference to the
 current thread
References: <20220412135520.2388424-1-arjun@redhat.com>
Date:   Tue, 12 Apr 2022 16:31:08 +0200
In-Reply-To: <20220412135520.2388424-1-arjun@redhat.com> (Arjun Shankar's
        message of "Tue, 12 Apr 2022 15:55:20 +0200")
Message-ID: <87sfqi5q6r.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Arjun Shankar:

> The reference to "this thread" in the DESCRIPTION of pthread_atfork(3)
> could be incorrectly interpreted to mean that only handlers registered
> by the thread calling fork(2) are executed.  Therefore, remove the
> reference.
>
> Signed-off-by: Arjun Shankar <arjun@redhat.com>
> ---
>  man3/pthread_atfork.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
> index b727cb48e..db5e210d4 100644
> --- a/man3/pthread_atfork.3
> +++ b/man3/pthread_atfork.3
> @@ -39,7 +39,7 @@ The
>  .BR pthread_atfork ()
>  function registers fork handlers that are to be executed when
>  .BR fork (2)
> -is called by this thread.
> +is called.
>  The handlers are executed in the context of the thread that calls
>  .BR fork (2).
>  .PP

I suspect the intent was to indicate that the handlers are called on the
thread calling fork, but that's probably clear enough from the context?

Thanks,
Florian

