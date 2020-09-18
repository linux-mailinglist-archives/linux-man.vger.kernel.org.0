Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 16F4B270390
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:53:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725955AbgIRRxv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:53:51 -0400
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124]:53411 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726156AbgIRRxv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:53:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600451630;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=lH9h9OI1OrX+sOe8QnLEUHodUSM9p/K8ns3WKR0aVeo=;
        b=NAt0aD4H+LZDz8FCPI9RUSIBLrm90yB1MzXHZA3GYiEY9OF7naGl6JJwvs1FVZ/zqjkfyE
        sTFrgNlBR73E9qml2UEDoeIWnJyFL37dqM7MRWhFvr1B8QPUeILT4X5jXp4oqLTQK9WECZ
        7SB0OsAXSAYzoE08McEKMOxBKZAPwYA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-AP7MahujNkC6Tq2BGj3D_w-1; Fri, 18 Sep 2020 13:53:48 -0400
X-MC-Unique: AP7MahujNkC6Tq2BGj3D_w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF14B56C33;
        Fri, 18 Sep 2020 17:53:46 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-177.ams2.redhat.com [10.36.113.177])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 9997073674;
        Fri, 18 Sep 2020 17:53:45 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com
Subject: Re: [PATCH 1/2] system_data_types.7: Document size_t
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
        <20200918112755.21428-2-colomar.6.4.3@gmail.com>
        <87tuvv5f24.fsf@oldenburg2.str.redhat.com>
        <ad2a293d-1e26-8279-7521-4093f4200a59@cs.ucla.edu>
Date:   Fri, 18 Sep 2020 19:53:44 +0200
In-Reply-To: <ad2a293d-1e26-8279-7521-4093f4200a59@cs.ucla.edu> (Paul Eggert's
        message of "Fri, 18 Sep 2020 10:42:28 -0700")
Message-ID: <87imcb0y53.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Paul Eggert:

> On 9/18/20 7:34 AM, Florian Weimer via Libc-alpha wrote:
>> the length modifier for printf and scanf is z, commently used as
>> %zu or %zx (%zd is for ssize_t).
>
> While %zd works for ssize_t in glibc, POSIX doesn't guarantee that
> it'll work, as ssize_t might not have the same width as size_t. (If
> memory serves this goes back to the bad old days when size_t was 64
> bits and ssize_t 32 bits on some platforms.) So if we document %zd we
> should say it's a GNU extension to POSIX, or something like that.

I didn't know that.  It's a good suggestion, thanks.

Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

