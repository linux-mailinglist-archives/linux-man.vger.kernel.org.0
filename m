Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52F6C7E5E25
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 20:05:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbjKHTFw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 14:05:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjKHTFv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 14:05:51 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CA482688
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 11:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699470288;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=/iMZNpCYcrzSs2LzNOhmvFhf/A6GQZG5qjXNvO5mwrU=;
        b=ODAkx6n9c+wHnZpptsYG8AP647OeHCveEGfeQ8aNM1980ubOF/DDtUPnw8KdU4URsU1MK3
        OZGTSGirtZmhz8TpbdpnoSPTZdTYGS9s1Z7q/Ectoh+3B/lZvbd6JtJlKpkIqWnVGyA1fj
        WRESzIn8W3FiuqfkV3OiAnWuOHK/p2k=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-624-q1-VP0bINKadr_O4NUvEYw-1; Wed, 08 Nov 2023 14:04:46 -0500
X-MC-Unique: q1-VP0bINKadr_O4NUvEYw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 604D5802E6C;
        Wed,  8 Nov 2023 19:04:46 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.226])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 4697E2166B27;
        Wed,  8 Nov 2023 19:04:46 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 3A8J4jN5227888;
        Wed, 8 Nov 2023 14:04:45 -0500
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated
In-Reply-To: <ZUtaH35V3koxTSL0@debian>
Date:   Wed, 08 Nov 2023 14:04:45 -0500
Message-ID: <xno7g4qd6a.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx@kernel.org> writes:
> strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
> and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?

Let's not limit ourselves to glibc APIs.  Tar format, for example, uses
fixed length fields (and my bet is that strncpy was created for it) yet
tar is not part of glibc.

IMHO the solution here is to document strncpy with sufficiently obvious
intent that it is NOT a length-limited strcpy (i.e. strlcpy) and should
ONLY be used for its intended purpose (filling a space-padded but not
null-terminated field)

It is not documentation's purpose to limit programmer's creativity, just
to give them an accurate representation of what the functions do.

