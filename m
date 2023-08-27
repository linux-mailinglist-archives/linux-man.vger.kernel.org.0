Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B15A778A13C
	for <lists+linux-man@lfdr.de>; Sun, 27 Aug 2023 21:43:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230111AbjH0Tmc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Aug 2023 15:42:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbjH0TmM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Aug 2023 15:42:12 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CB3A124
        for <linux-man@vger.kernel.org>; Sun, 27 Aug 2023 12:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1693165283;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=q+22GUs5/ZMvXTVj1mwn8w0z3Ji9gnGhfRKJu9ew3s8=;
        b=bbkcC0sre8vHF2utYfRyIvERUrvOi8NKH28q9h2k0ryFjr0gdL3KiXeshq+Kiv2k3RBkg2
        MldFBvAnHwq9T0Kcg0pqH8cL0CU1a0f24Ig1giz45tf1yUAiBFrg11q41t4FzEQnaBWyxS
        lUH3RWTWboczuk/zrGiF2ETo3Gcg68E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-692-x2W271rANrqKNoO-4MSJ9Q-1; Sun, 27 Aug 2023 15:41:20 -0400
X-MC-Unique: x2W271rANrqKNoO-4MSJ9Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D97DA185A78F;
        Sun, 27 Aug 2023 19:41:19 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.2.16.21])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 26E6540C6F4C;
        Sun, 27 Aug 2023 19:41:19 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Christoph Anton Mitterer <calestyo@scientia.org>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] open.2: Clarify different POSIX uses of EOPNOTSUPP and
 ENXIO
References: <979345cf576e86c42743ea48d797484fc41f8bf7.camel@scientia.org>
Date:   Sun, 27 Aug 2023 21:41:17 +0200
In-Reply-To: <979345cf576e86c42743ea48d797484fc41f8bf7.camel@scientia.org>
        (Christoph Anton Mitterer's message of "Fri, 25 Aug 2023 22:28:14
        +0200")
Message-ID: <87ttsk8e8y.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Christoph Anton Mitterer:

> @@ -1437,6 +1439,12 @@ with a value greater than or equal to 200809L or
>  with a value greater than or equal to 700.
>  In glibc 2.11 and earlier, one obtains the definitions by defining
>  .BR _GNU_SOURCE .
> +.PP
> +POSIX.1-2017 uses
> +.B EOPNOTSUPP
> +instead of
> +.B ENXIO
> +to indicate that the file is a UNIX domain socket.
>  .SH HISTORY
>  .TP
>  .BR open ()

To what degree is this dependent on the file system?  Does the VFS layer
restrict these error codes for anything else?  I don't think so.  Maybe
strictly speaking, the added wording is still accurate, but the
conclusion that ENXIO means socket would be incorrect draw, I think.

Thanks,
Florian

