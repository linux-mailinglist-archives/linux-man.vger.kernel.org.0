Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D4EF4A51E8
	for <lists+linux-man@lfdr.de>; Mon, 31 Jan 2022 22:53:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376471AbiAaVx0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jan 2022 16:53:26 -0500
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:31023 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S240199AbiAaVxW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jan 2022 16:53:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1643666001;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=aScPGqGRV0eUZF7eF9ADkc/+XkwIWjxLw7q8Dl7mM0w=;
        b=BGFjgcT21F928TAUjRwBfdyBP7LV+FgxPPoEiNK8PRVMWGgiaFespKCcAlcAikzbfaqcP6
        kzvFs6LWwEAFRuRikMxg6sseo8oSQcr1BhpkwzbhbK6IYIkxTsiiVyeTr7ZVgmIV5jPJoz
        HxsXk3rRlwkq+o/GjUXNlP+kp4ZV9mc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-306-Eq6iyis2NOGxBb_kVt0huA-1; Mon, 31 Jan 2022 16:53:18 -0500
X-MC-Unique: Eq6iyis2NOGxBb_kVt0huA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3E7284DA40;
        Mon, 31 Jan 2022 21:53:16 +0000 (UTC)
Received: from oldenburg.str.redhat.com (unknown [10.39.193.205])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 59DD8610A5;
        Mon, 31 Jan 2022 21:53:15 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        Ivan Zuboff <anotherdiskmag@gmail.com>,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com
Subject: Re: SA_ONSTACK: man page and glibc reference manual in conflict
References: <CAL-cVegvPvu6kZgn5x=6gimzuSTfCErKzTL+8+1UgQxM3fiNQQ@mail.gmail.com>
        <5cfb23b8-de77-3eec-92d0-da29fededf4c@gmail.com>
Date:   Mon, 31 Jan 2022 22:53:13 +0100
In-Reply-To: <5cfb23b8-de77-3eec-92d0-da29fededf4c@gmail.com> (Alejandro
        Colomar's message of "Mon, 31 Jan 2022 22:23:26 +0100")
Message-ID: <87czk7608m.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar:

> Hi all,
>
> On 1/31/22 10:29, Ivan Zuboff wrote:
>> Hello!
>> 
>> Man page says:
>> SA_ONSTACK
>>               Call the signal handler on an alternate signal stack
>>               provided by sigaltstack(2).  *If an alternate stack is not
>>               available, the default stack will be used.*  This flag is
>>               meaningful only when establishing a signal handler.
>> https://man7.org/linux/man-pages/man2/sigaction.2.html
>> 
>> glibc reference manual says:
>> Macro: int SA_ONSTACK
>> If this flag is set for a particular signal number, the system uses
>> the signal stack when delivering that kind of signal. See Signal
>> Stack. *If a signal with this flag arrives and you have not set a
>> signal stack, the system terminates the program with SIGILL.*
>> https://www.gnu.org/software/libc/manual/html_node/Flags-for-Sigaction.html
>> 
>> As far as I understand, statements in *stars* are in conflict. glibc
>> documentation says that "While the glibc manual remains the canonical
>> source for API descriptions, the man-pages are an excellent
>> reference.", so I decided to mail you supposing that man page is
>> incorrect in this regard.
>> https://www.gnu.org/software/libc/documentation.html
>> 
>> Please correct me if I'm wrong. Also, sorry for my bad English, this
>> is not my native language.
>> 
>> Best regards,
>> Ivan
>
> I received this bug report on linux-man@.  The report is about a text
> that predates git in the man-pages.  Could you please confirm the bug,
> and check if anything else needs to be fixed too?

It's a bug in the glibc documentation.  POSIX says:

| SA_ONSTACK
|     [XSI] [Option Start] If set and an alternate signal stack has been
|     declared with sigaltstack(), the signal shall be delivered to the
|     calling process on that stack. Otherwise, the signal shall be
|     delivered on the current stack. [Option End]

And that's also the Linux behavior.

Thanks,
Florian

