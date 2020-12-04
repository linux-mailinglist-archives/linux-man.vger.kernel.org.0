Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A023A2CEA90
	for <lists+linux-man@lfdr.de>; Fri,  4 Dec 2020 10:14:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728962AbgLDJNx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Dec 2020 04:13:53 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:35056 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726471AbgLDJNx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Dec 2020 04:13:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1607073147;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=9rmy64shG48vY56a62sQLH7H13tnnYDJYVfd0nj8TO4=;
        b=K1u+J51q2Nvbjb4ZMS8uGkuLH2KK+wWcHyf/VvnFn1aiVQEMOwznfGmQytuDv3S59b7PzT
        Ck1iHe0LFE+qjz81EZi81NtNfCLA9bRAyCeQxRB0xuPXBl4Djy5IgncGfe8w+GAqnqBW7+
        2tR+4pC0qBbhaAiOvtAPnu7GHacGP1o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-94-W_DEzsLuMjGIU-7xaIXd5w-1; Fri, 04 Dec 2020 04:12:22 -0500
X-MC-Unique: W_DEzsLuMjGIU-7xaIXd5w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01D2C107ACE4;
        Fri,  4 Dec 2020 09:12:22 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-112-44.ams2.redhat.com [10.36.112.44])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 33F5510016F4;
        Fri,  4 Dec 2020 09:12:18 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Carlos O'Donell <carlos@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for
 glibc 2.31.
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
        <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
        <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
        <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
        <CAKgNAkjB3-LvJaTQ5cHyc-cduD6Yr0_dBrSmN_bih+YOzuBCww@mail.gmail.com>
        <84511dbb-2c38-b928-3155-1027a6078a96@redhat.com>
Date:   Fri, 04 Dec 2020 10:12:16 +0100
In-Reply-To: <84511dbb-2c38-b928-3155-1027a6078a96@redhat.com> (Carlos
        O'Donell's message of "Thu, 11 Jun 2020 16:53:09 -0400")
Message-ID: <87ft4mue8f.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
>
> When done we'll have two lists, and two explanations for the search paths
> and their orders.
>
> I'm doing this as part of the upstream review of this infrasturcture
> because we're going to change the behaviour in an upcoming release. With
> the changes in place we'll have a good place to say "... and now it's different."
>
> In summary: Still working on it. Expect v3.

Carlos, what's the status here?  I need to write an update for
glibc-hwcaps, and this likely conflicts with your edits (at least
semantically).

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

