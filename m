Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BB8C434693
	for <lists+linux-man@lfdr.de>; Wed, 20 Oct 2021 10:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229702AbhJTIO2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Oct 2021 04:14:28 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124]:51111 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229603AbhJTIO1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Oct 2021 04:14:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1634717530;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Li9UlQA1J3i950jpL0BPtiFiYfDF0JojypB7MTefSsU=;
        b=QJHgrl7g4MkfKBaG5KS5YL6OLaeGaMxkrZ03bjHtENpOI5bdqXOL9aJ9FTpLu0j94lv3KR
        XzjEz6/FebJrJVlMNIMcXxrzT+W2xKpuNBCkfGQJs3J8wfkzPO0gduytshgUElxKj+PCLQ
        wG0omdyE22e9p5lMHfOp+i7FZgXZ4qI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-bgu4EDreOM2TOtCqqKwY9A-1; Wed, 20 Oct 2021 04:12:06 -0400
X-MC-Unique: bgu4EDreOM2TOtCqqKwY9A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F4C418D6A2E;
        Wed, 20 Oct 2021 08:12:05 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.194.104])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 3797960BF1;
        Wed, 20 Oct 2021 08:12:04 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Thaddeus H. Black" <thb@debian.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH v3] filename.7: new manual page
References: <YWysyI6/sZtbQBBb@b-tk.org> <YW2hzL5vDfVZIAXY@b-tk.org>
        <87fssxgzt8.fsf@oldenburg.str.redhat.com> <YW6mcn0uMW3FWUu6@b-tk.org>
Date:   Wed, 20 Oct 2021 10:12:02 +0200
In-Reply-To: <YW6mcn0uMW3FWUu6@b-tk.org> (Thaddeus H. Black's message of "Tue,
        19 Oct 2021 11:05:22 +0000")
Message-ID: <87lf2oxgh9.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Thaddeus H. Black:

>> What does this mean?  I think only byte 0x2f is reserved.  The UTF-8
>> comment is misleading.  A historic/overlong encoding of / in multiple
>> UTF-8 bytes is *not* reserved.
>
> I had not known that UTF-8 had an alternate encoding for any ASCII
> character.  Does it indeed have an alternate encoding?  If so, where
> can I learn more?

See the Security Considerations section in the RFC:

  <https://datatracker.ietf.org/doc/html/rfc3629#section-10>

Most file systems do not treat file names as UTF-8, so they do not
perform any validation.

Thanks,
Florian

