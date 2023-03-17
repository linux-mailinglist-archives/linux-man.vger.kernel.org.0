Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A2E866BF3AB
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 22:16:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbjCQVQH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 17:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229817AbjCQVQG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 17:16:06 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37C5793F7
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1679087721;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=09hZRjQL9FkCxcT96i2/JbvMD9K6tb8JRf80ZEf0a1E=;
        b=DuMLqsRHk8CQBhvVTGfDKW0lF+V91vLx8yHLJo7zNFdrxeQGOtwylF6J8vFrtZONvmzreG
        mhFChO6xqz5MgaFQmJe8bLpifwygoUcIe25zzzWiBUHu2dX/qkHGzYGICqsnc00IamyPYI
        fQKykoWqK9ZXeOtKjtOj1zsnzNyykZo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-592-VdSQSrwAMhed3f4DOU8a_g-1; Fri, 17 Mar 2023 17:15:17 -0400
X-MC-Unique: VdSQSrwAMhed3f4DOU8a_g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65416886464;
        Fri, 17 Mar 2023 21:15:17 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.230])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 525EB1121325;
        Fri, 17 Mar 2023 21:15:17 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 32HLFG1i3647724;
        Fri, 17 Mar 2023 17:15:16 -0400
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: [patch v2] aligned_alloc: conform to C17
In-Reply-To: <ea4c6ddd-1db8-a005-7725-f30bc58e89f3@gmail.com>
Date:   Fri, 17 Mar 2023 17:15:16 -0400
Message-ID: <xn7cvf2i6z.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx.manpages@gmail.com> writes:
> BTW, I guess C11 was equivalent to C17 in this regard, or was this
> changed in C17?

C17 seems to be a "bugfix" for C11.  In this case, one of the
requirements for aligned_alloc() in C11 was, well, silly.  It was
removed in C17.

