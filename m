Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB260330B66
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 11:40:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230522AbhCHKkL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 05:40:11 -0500
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:20222 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229754AbhCHKjv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 05:39:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1615199990;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=1CIB9yigvUtrNvAbR6RGBhBBeX/JGcoxXPGu8/nP2tE=;
        b=M8Xu/rTUzPrj8i0yjpLebD3NsCs6eUVHoZVINUVO5F+/W6EoFpmduz9BtJRlBOfEOEyb1u
        WhYinlmZMyqqfbNeW0oC/Zhu9PYOBiv14SkzXw1TggGALewO4ZC1/LFjxvUooAd5KG20PF
        Q7ZtRMQpyrOFiHqp5d66SBO96zA9oVU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-1-phFXzTQlPTizXK6SkR9Zvg-1; Mon, 08 Mar 2021 05:39:48 -0500
X-MC-Unique: phFXzTQlPTizXK6SkR9Zvg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E94F100541A;
        Mon,  8 Mar 2021 10:39:47 +0000 (UTC)
Received: from oldenburg.str.redhat.com (ovpn-112-77.ams2.redhat.com [10.36.112.77])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 01C965F9C2;
        Mon,  8 Mar 2021 10:39:45 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, libc-alpha@sourceware.org
Subject: Re: pthread_cleanup_push_defer_np.3: missing functions in glibc
References: <1ee301e5-d3a4-2e0e-3473-6b0eea304266@gmail.com>
Date:   Mon, 08 Mar 2021 11:39:50 +0100
In-Reply-To: <1ee301e5-d3a4-2e0e-3473-6b0eea304266@gmail.com> (Alejandro
        Colomar's message of "Mon, 8 Mar 2021 11:35:35 +0100")
Message-ID: <87mtveexop.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> While adding 'restrict' to the prototypes, I found that the functions
> defined in this page don't exist on glibc (or I couldn't find them).
> I tried removing _np, and still no luck, and 'git log --grep' didn't
> help either.  Where these functions removed at some point?

Yes, they are part of the legacy cancellation implementation that
predates DWARF unwinding.

Thanks,
Florian

