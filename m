Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32C627E704E
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 18:31:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231598AbjKIRbU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 12:31:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231478AbjKIRbT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 12:31:19 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F9D93
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 09:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699551029;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=rZ9T8EkQz39omvCLzUEXLotLV9iPTaywqjsAGucEXsw=;
        b=Y6EniXwWhAw8zPfrVEaE4GkkC0p+7pdeCuD1HDH0wzu4lzQSw+mHmqto86TrBUc+SfebEo
        ClggxBKDlUZFUjtCxsbMhKToGU+aoU8FwUfA/zwT4WpMJqAryq8U55FJzQR8gXoSP1//jM
        V1aeWMTrv/tbuEt7+jm7+XSfTbspyhM=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-553-gL3fbQuYOOmN4BJBm2Ruqw-1; Thu, 09 Nov 2023 12:30:19 -0500
X-MC-Unique: gL3fbQuYOOmN4BJBm2Ruqw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0E7BF833B4D;
        Thu,  9 Nov 2023 17:30:19 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.226])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D3D472026D68;
        Thu,  9 Nov 2023 17:30:18 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 3A9HUHST256371;
        Thu, 9 Nov 2023 12:30:17 -0500
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     jg@jguk.org, eggert@cs.ucla.edu, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, mattlloydhouse@gmail.com,
        xxc3ncoredxx@gmail.com, kukuk@suse.com,
        adhemerval.zanella@linaro.org, zack@owlfolio.org,
        g.branden.robinson@gmail.com, carlos@redhat.com
Subject: Re: [PATCH] stpncpy.3, string_copying.7: Clarify that st[rp]ncpy() do
 NOT produce a string
In-Reply-To: <ZUz0igot_qFs3BJX@debian>
Date:   Thu, 09 Nov 2023 12:30:17 -0500
Message-ID: <xncywirg0m.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx@kernel.org> writes:
> "Fill a fixed-width buffer with characters from a string and pad with
> null bytes."

The pedant in me says it should be NUL bytes (or NUL's), not null bytes.
nul/NUL is a character, null/NULL is a pointer.

