Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9D0B7E5FA6
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 22:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231958AbjKHVIC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 16:08:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231935AbjKHVIA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 16:08:00 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC8EB2580
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 13:07:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1699477630;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=3+k7yYFL2544AaBUr1PygVaI/9k5MVokX125YELCkng=;
        b=KK6qDTVU8ClEnuZwyFjwLfY+sbYPEh9jvF92BwFb/diA7hs/0u6EJdNeszTuCKlOpFfdKc
        ER2++UYUM0L0j8K/WxruJUV7QVyyw+EWUVAmv68oSJ8PYWtnjCuP/GTbOK73jyFXVaVdL/
        x1Qub9EovPOfYGoZOvyr2gqdiR+nctw=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-119-aDr-Z82qPOG5qF9re-sDeA-1; Wed,
 08 Nov 2023 16:07:08 -0500
X-MC-Unique: aDr-Z82qPOG5qF9re-sDeA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22A503810D20;
        Wed,  8 Nov 2023 21:07:08 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.9.226])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 01EE71121306;
        Wed,  8 Nov 2023 21:07:07 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 3A8L77kI230726;
        Wed, 8 Nov 2023 16:07:07 -0500
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     libc-alpha@sourceware.org, jg@jguk.org, linux-man@vger.kernel.org
Subject: Re: strncpy clarify result may not be null terminated
In-Reply-To: <ZUvr_FPICn5VkP4q@debian>
Date:   Wed, 08 Nov 2023 16:07:07 -0500
Message-ID: <xnil6cq7ic.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx@kernel.org> writes:
> Would you mind reading the latest versions of strcpy(3), strncpy(3), and
> string_copying(7), as in the git repository, and comment your thoughts?

I think my examples would work well after the first CAVEATS paragaph:

       The name of these functions is confusing.  These functions
       produce a null-padded character sequence, not a string (see
       string_copying(7)), like this:

     strncpy (buf, "1", 5) -> { '1', 0, 0, 0, 0 }
     strncpy (buf, "1234", 5) -> { '1', '2', '3', '4', 0 }
     strncpy (buf, "12345", 5) -> { '1', '2', '3', '4', '5' }
     strncpy (buf, "123456", 5) -> { '1', '2', '3', '4', '5' }

>       These functions copy the string pointed to by src  into  a  null-padded
>       character sequence at the fixed-width buffer pointed to by dst.  If the
>       destination buffer, limited by its size, isn't large enough to hold the
>       copy,  the  resulting character sequence is truncated.

hmmm... perhaps

  These functions copy at most SZ bytes from SRC into a fixed-length
  buffer DST, padding any unwritten bytes in DST with NUL bytes.
  Specifically, if SRC has a NUL byte in the first SZ bytes, copying
  stops there and any remaining bytes in DST are filled with NUL bytes.
  If there are no NUL bytes in the first SZ bytes of SRC, SZ bytes are
  copied to DST.

This avoids the term "string" completely and emphasises the not-string
nature of the destination.

 stpncpy,  strncpy  - zero a fixed-width buffer and copy a string into a
       character sequence with truncation and zero the rest of it

Or "fill a fixed-width zero-padded buffer with bytes from a string"

That avoids saying "copy a string"

string_copying.7:

> For historic reasons, some standard APIs, such as utmpx(5),

Perhaps "some standard APIs and file formats,, such as utmpx(5) or
tar(1)," ?

> however, those padding null bytes are not part of the character
> sequence.

add ", and may not be present if not needed." ?

