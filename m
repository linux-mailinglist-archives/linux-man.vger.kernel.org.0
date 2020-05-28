Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DDFD1E5C28
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2020 11:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728252AbgE1JgH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 28 May 2020 05:36:07 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:21852 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727981AbgE1JgG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 28 May 2020 05:36:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1590658566;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=m0aYzz3nH2uEbTQ3n4uYzX3uk+4ra+gAmmReAU7Irco=;
        b=YHIjFvx6SNCnKybf7Wv4aiu8BY90nnLzILL86kudZfvbConrU4AThAXD6Eoi5qdNXh+8q2
        gWAWW8NLm0VNO8QV1GKbTjfselRHwjcBA24zNuDqefWIHOJTsHdg6qiw1Niq1CAyUB+hGN
        XOnVCU9fIPkDqSe06gF3rfpXeGBDUog=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109--lB-pq1wM3uppJsBRLqrhQ-1; Thu, 28 May 2020 05:36:04 -0400
X-MC-Unique: -lB-pq1wM3uppJsBRLqrhQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4F78C107BEF6;
        Thu, 28 May 2020 09:36:03 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-91.ams2.redhat.com [10.36.112.91])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C90A19CB9;
        Thu, 28 May 2020 09:35:59 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Carlos O'Donell <carlos@redhat.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] ld.so.8: Update "Hardware capabilities" section for glibc 2.31.
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
Date:   Thu, 28 May 2020 11:35:58 +0200
In-Reply-To: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com> (Carlos
        O'Donell's message of "Wed, 27 May 2020 16:02:27 -0400")
Message-ID: <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Carlos O'Donell:

> +The following names are currently recognized as of the release of glibc 2.31:
> +.\" This information comes from glibc's sysdeps/*/dl-procinfo.c and is
> +.\" currently not directly documented in the glibc manual. We document
> +.\" it here with the help of the glibc maintainers.

I'm not sure if this list is correct.  Did you filter the hwcap strings
based on HWCAP_IMPORTANT?

Thanks,
Florian

