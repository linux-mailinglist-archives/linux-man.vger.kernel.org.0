Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 930357E5EE8
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 20:59:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjKHT7N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 14:59:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229506AbjKHT7M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 14:59:12 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95FCA211B
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 11:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699473509;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=t8KTVllPMxFBE8oodadcZ/iLNXlaPFvOPSpBl+jUJX4=;
        b=bbSzAfu/IQMICg/Pj1msAE717P0iwGzqbRMVi+i5T4fAXtWTCxbA6DurfQrLNDXGzATxdP
        fSXnooPEUKsQRNXUNLmvkcCsa+wmP2aNQOQJ3oKa/sWU087OO/udXykzzj8dJx/gZcp+7f
        S+uVCDPcITX35SkvPxPMCGdjjwesQPU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-IvnAtI6cOzaozGENRURasw-1; Wed, 08 Nov 2023 14:58:25 -0500
X-MC-Unique: IvnAtI6cOzaozGENRURasw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F6C785A58C;
        Wed,  8 Nov 2023 19:58:25 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.226])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 0889E492BFA;
        Wed,  8 Nov 2023 19:58:24 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 3A8JwOmm229126;
        Wed, 8 Nov 2023 14:58:24 -0500
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated
In-Reply-To: <ZUvkIZpGduZ0FMVK@debian>
Date:   Wed, 08 Nov 2023 14:58:24 -0500
Message-ID: <xnleb8qaov.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Perhaps an example that shows the problem?

EXAMPLES

    strncpy (buf, "1", 5);
    { '1', 0, 0, 0, 0 }

    strncpy (buf, "1234", 5);
    { '1', '2', '3', '4', 0 }

    strncpy (buf, "12345", 5);
    { '1', '2', '3', '4', '5' }

    strncpy (buf, "123456", 5);
    { '1', '2', '3', '4', '5' }

Maybe strcpy and strncpy shouldn't even share man pages, since they're
not as related as we once thought?

