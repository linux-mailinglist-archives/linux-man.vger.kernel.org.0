Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7FD72858E3
	for <lists+linux-man@lfdr.de>; Wed,  7 Oct 2020 08:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727439AbgJGG5c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Oct 2020 02:57:32 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:60018 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726041AbgJGG5b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Oct 2020 02:57:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1602053850;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=VMI5TP7yQ9BqNxgEYxvuIITcApud9SNaQzv50+cmjhc=;
        b=MAl1tVlcE0cSpOAGp9ABM4MGTHkKpTqs8+EDRq5qDZVU7xeEHTuxRMyABXFRJyjOotL3Sd
        LDzO6SkAn+lKzHEv+SAbnEnT0vWLjMjI/uv3rSA8fyHX2KDPDhCL7k0YtKqYQ3RzFYr2Qi
        407WFITAjBDFHSLptVCZQGEbdC3WNb0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-NhVl1ZFtOuKKV3t8V4zgOw-1; Wed, 07 Oct 2020 02:57:28 -0400
X-MC-Unique: NhVl1ZFtOuKKV3t8V4zgOw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8B36818A8223;
        Wed,  7 Oct 2020 06:57:27 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-113-154.ams2.redhat.com [10.36.113.154])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C0C25D9DD;
        Wed,  7 Oct 2020 06:57:25 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org
Subject: Re: [PATCH 1/4] system_data_types.7: Add '__int128'
References: <20201001163443.106933-1-colomar.6.4.3@gmail.com>
        <20201001163443.106933-2-colomar.6.4.3@gmail.com>
        <87eemg97ew.fsf@oldenburg2.str.redhat.com>
        <f08ea5cf-d4ae-54aa-405b-829909156186@cs.ucla.edu>
        <bcce5f89-6682-e089-d129-43c36fe3f392@gmail.com>
        <daa5c152-0462-19d2-d327-0042f405a40c@cs.ucla.edu>
        <87y2kl403t.fsf@oldenburg2.str.redhat.com>
        <00af348c-83f7-fa3d-8335-09ad9c8b76d5@gmail.com>
Date:   Wed, 07 Oct 2020 08:57:24 +0200
In-Reply-To: <00af348c-83f7-fa3d-8335-09ad9c8b76d5@gmail.com> (Michael
        Kerrisk's message of "Wed, 7 Oct 2020 08:53:38 +0200")
Message-ID: <878scijzfv.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk:

> Hi Florian,
>
> On 10/5/20 9:12 AM, Florian Weimer wrote:
>> * Paul Eggert:
>> 
>>> On 10/2/20 12:01 PM, Alejandro Colomar wrote:
>>>> If you propose not to document the stdint types either,
>>>
>>> This is not a stdint.h issue. __int128 is not in stdint.h and is not a
>>> system data type in any real sense; it's purely a compiler
>>> issue. Besides, do we start repeating the GCC manual too, while we're
>>> at it? At some point we need to restrain ourselves and stay within the
>>> scope of the man pages.
>> 
>> The manual pages also duplicate the glibc manual, and as far as I know,
>> it's what programmers actually read.  (Downstream, we receive many more
>> man-pages bugs than glibc or GCC manual bugs.)  Most developers use
>> distributions 
>
> I presume by most you mean "Debian + Ubuntu"? (The certainly
> reflects what I see.)

Yes, exactly.  And other distributions inspired by the Debian
interpretation of the DFSG.

>> which do not ship the glibc or GCC manual for licensing
>> policy reasons, so the GNU manuals are not installed locally.
>
> I hadn't quite clicked to this point. So, Debian (and thus
> Ubuntu) do not ship the glibc manual because of GNU FDL. That's 
> unfortunate.

From Debian's point of view, only GFDL plus Invariant Sections is
problematic, but both the glibc and GCC manuals have them.  Plain GFDL
would still be awkward for upstream, but fine from a policy standpoint.

Thanks,
Florian
-- 
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'Neill

