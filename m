Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B9861F8327
	for <lists+linux-man@lfdr.de>; Sat, 13 Jun 2020 14:01:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726100AbgFMMBK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Jun 2020 08:01:10 -0400
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:54340 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726030AbgFMMBJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Jun 2020 08:01:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1592049668;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=0otap4uEP4pLT7wy8CZPviRWo82/qmSeO+vlchp1bC8=;
        b=fc0rCfAPhYab8cMIzaJBjsujzloXod7aliA0n7u16BzXIBgxtQn+tEn6rnYQJAVV/3S0NB
        p5YfSGTjdk2MS9MNNoipJX9fXq+W70r2suvPEHq0ciLgCWnBtRartJrPBw1adRvhUVybwf
        XpM3UOASfkj1LXbxdkwLiSwyviQDa+I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-70701-_2OZCfDrVMOV7Xwg-1; Sat, 13 Jun 2020 08:01:04 -0400
X-MC-Unique: 70701-_2OZCfDrVMOV7Xwg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6421BFC1;
        Sat, 13 Jun 2020 12:01:03 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-41.ams2.redhat.com [10.36.112.41])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 015625D9C5;
        Sat, 13 Jun 2020 12:00:59 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Carlos O'Donell <carlos@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for glibc 2.31.
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
        <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
        <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
        <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
        <CAKgNAkjB3-LvJaTQ5cHyc-cduD6Yr0_dBrSmN_bih+YOzuBCww@mail.gmail.com>
        <84511dbb-2c38-b928-3155-1027a6078a96@redhat.com>
Date:   Sat, 13 Jun 2020 14:00:58 +0200
In-Reply-To: <84511dbb-2c38-b928-3155-1027a6078a96@redhat.com> (Carlos
        O'Donell's message of "Thu, 11 Jun 2020 16:53:09 -0400")
Message-ID: <87ftaz41l1.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Carlos O'Donell:

> On 6/10/20 2:00 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Carlos,
>> 
>> What's the status of this patch?
>
> I'm currently rewriting the language of the section to split apart the
> AT_PLATFORM and AT_HWCAP parts.
>
> They each behave differently. AT_PLATFORM is a non-nested singular platform
> directory that is searched with no fallback, and that needs to clarified
> and called out. While AT_HWCAP is drastically different in behaviour.

I think AT_PLATFORM behaves like any of the AT_HWCAP directories, except
that the name is determined by information from the kernel.

Thanks,
Florian

