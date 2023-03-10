Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9566B3478
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 04:03:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjCJDDw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 22:03:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbjCJDDv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 22:03:51 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C496193EF
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 19:03:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1678417380;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=N3L8Se9HgEEc2IydIDO/tq6Or+cBwA6BX550OL+c56E=;
        b=ih8si8z2OKikMLgwt7pCuVN0VrMNByKK/tC5xzgXF7WzfCKbnPzjf9rhpzPlmKaMDZBNpz
        g4A1Nw2tHfHbr+efEnVs8YDBmTHCA6/R30Vxu7kdNQ/tg6rw6Waj5mEiyhLVSVDsSh70o3
        2SOpQTu/bXdCdAGtDyAAeAElBJrbXns=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-OPmF63X1Oeew2FS035OuKg-1; Thu, 09 Mar 2023 22:02:57 -0500
X-MC-Unique: OPmF63X1Oeew2FS035OuKg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB37585A588;
        Fri, 10 Mar 2023 03:02:56 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.14])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 909BA2026D4B;
        Fri, 10 Mar 2023 03:02:56 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 32A32sMa3275134;
        Thu, 9 Mar 2023 22:02:55 -0500
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     pjfloyd@wanadoo.fr, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org
Subject: Re: Issues in manpage memalign
In-Reply-To: <77cfc3d2-cd41-13a7-bdb9-ced179531f33@gmail.com>
Date:   Thu, 09 Mar 2023 22:02:54 -0500
Message-ID: <xnsfed48bl.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org> writes:
> I've CCd glibc, in case someone there can confirm in which direction they
> would like the manual page to go.

see https://sourceware.org/bugzilla/show_bug.cgi?id=20137
and https://sourceware.org/pipermail/libc-alpha/2023-February/145858.html

I've got this on my to-do list to fix aligned_alloc to conform to,
probably, C17.  I'll send an update for the man page when I update the
code, if you don't do it first ;-)

I don't know of any discussions to change our stance on memalign() at
this time.

