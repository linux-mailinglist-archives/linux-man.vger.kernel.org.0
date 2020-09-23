Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 844AD275767
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 13:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726472AbgIWLrj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 07:47:39 -0400
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:43624 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726332AbgIWLrj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 07:47:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1600861658;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=AawZdJyrjYHlqTEiwf3CI/JRnhGBqEjrRKk/rV7y/nI=;
        b=Ibnc8pCjelT9cj0PIJObREwCSaFIM20tv9pvSEur5ZYiZbYmdg253Db3yrSC0V8ESkn6Jp
        BQonZD5aU7H+myGKLqK7M7L+q5pmT7302uf4XF3zfNZ8QgSi9MUx39ZlIS0igsGmt+0WoL
        0sNEPRdiuDZL9+X/HzBGDboR6jRnbtg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-ahGobM9wMSKwE1xeAf7SBQ-1; Wed, 23 Sep 2020 07:47:35 -0400
X-MC-Unique: ahGobM9wMSKwE1xeAf7SBQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4C2B81CBE7;
        Wed, 23 Sep 2020 11:47:34 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-114-108.ams2.redhat.com [10.36.114.108])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id C94A55577A;
        Wed, 23 Sep 2020 11:47:33 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Andreas Schwab <schwab@linux-m68k.org>
Cc:     Florian Weimer via Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] rtld-audit.7: Clarify la_version handshake
References: <874knosoyq.fsf@oldenburg2.str.redhat.com>
        <87r1qsvhqm.fsf@igel.home>
Date:   Wed, 23 Sep 2020 13:47:32 +0200
In-Reply-To: <87r1qsvhqm.fsf@igel.home> (Andreas Schwab's message of "Wed, 23
        Sep 2020 13:45:53 +0200")
Message-ID: <87zh5gr9yj.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Andreas Schwab:

> On Sep 23 2020, Florian Weimer via Libc-alpha wrote:
>
>> +.PP
>> +In order to enable backwards compatibility with older dynamic linkers,
>> +an audit module can examine the
>> +.I version
>> +argument and return an earlier version than
>> +.BR LAV_CURRENT ,
>> +assuming the module can adjust its implement to match the requirements
>
> s/implement/interface/ ?

Thanks.  I meant to write =E2=80=9Cimplementation=E2=80=9D.  Fixed locally.

Do you agree that this is how the handshake should work?

Florian
--=20
Red Hat GmbH, https://de.redhat.com/ , Registered seat: Grasbrunn,
Commercial register: Amtsgericht Muenchen, HRB 153243,
Managing Directors: Charles Cachera, Brian Klemm, Laurie Krebs, Michael O'N=
eill

