Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F10B7E6106
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 00:29:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjKHX3M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 18:29:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjKHX3L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 18:29:11 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6BB25B1
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 15:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699486102;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=u3m97rJVsLqOYz+UgNXwSicFC4GeR1DjVQk1J9LINM8=;
        b=LdSo1xJdyt5Gm1eAEjHou5sbKDi6lJrSHZkLoIjsSD7PUHVKaGZV+bwiNdB4op9Ad7OCxH
        MWmQ8glLnJ1zmyi9MOtBwlksPs+3ZERih9FdTC/EUUEiBJ8nlbGsl0iQgOTfriJ2LZ4FUo
        g9AtDmO2y6oJsu2hlzkedIs7JKB5v1E=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-455-XE7RoVVTOi6jFGWS73VlMQ-1; Wed, 08 Nov 2023 18:28:18 -0500
X-MC-Unique: XE7RoVVTOi6jFGWS73VlMQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A3FAF101A590;
        Wed,  8 Nov 2023 23:28:17 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.226])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 65BED2166B26;
        Wed,  8 Nov 2023 23:28:17 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 3A8NSGh1233870;
        Wed, 8 Nov 2023 18:28:16 -0500
From:   DJ Delorie <dj@redhat.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     alx@kernel.org, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, jg@jguk.org, mattlloydhouse@gmail.com,
        xxc3ncoredxx@gmail.com, kukuk@suse.com,
        adhemerval.zanella@linaro.org, zack@owlfolio.org,
        g.branden.robinson@gmail.com, carlos@redhat.com
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
In-Reply-To: <290c7650-bc39-4315-a9dd-7b9b7ec55333@cs.ucla.edu>
Date:   Wed, 08 Nov 2023 18:28:16 -0500
Message-ID: <xnfs1frfjj.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Paul Eggert <eggert@cs.ucla.edu> writes:
> Not necessarily. For example, in strncpy (DST, SRC, N), SRC need not be 
> a string.

But it will be treated as one, for the purposes of this function.

