Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F073711CCB6
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 13:02:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729060AbfLLMCI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 07:02:08 -0500
Received: from us-smtp-1.mimecast.com ([205.139.110.61]:41353 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729043AbfLLMCI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 07:02:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1576152126;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=6twjn4Fpcl93L+4j+WEyWNmtS/6Du0BRxF8B/Wcerso=;
        b=cU7L6Q4dKRfMEnXiykAmyvihSygG8G+xsw0HnPy+zQiq5qn46RsHW5XvLWrHTyLYSGBWm7
        3cGtY1xpIrycY3sU1WW3WTi/zDROcQV9r9qaYKQqM6RCoi/hSUhem/llTUxakLG4kF2MlD
        GbU8NWa+hcn6IjVDFmbXalGkCUcSzxs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70--k3xLpDbNmuAUfNjrh4lcg-1; Thu, 12 Dec 2019 07:01:59 -0500
X-MC-Unique: -k3xLpDbNmuAUfNjrh4lcg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE942800EB5;
        Thu, 12 Dec 2019 12:01:58 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-227.str.redhat.com [10.33.192.227])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 81F5E5C1C3;
        Thu, 12 Dec 2019 12:01:57 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     Robin Kuzmin <kuzmin.robin@gmail.com>
Cc:     mtk@man7.org, linux-man <linux-man@vger.kernel.org>,
        mjw@fedoraproject.org
Subject: Re: elf.5.html: Resolving confusion.
References: <CAAztzVHSQPAxY4zcmxtj8v8geEu=SJiSPPBBsZRxUeacxHO+-w@mail.gmail.com>
Date:   Thu, 12 Dec 2019 13:01:55 +0100
In-Reply-To: <CAAztzVHSQPAxY4zcmxtj8v8geEu=SJiSPPBBsZRxUeacxHO+-w@mail.gmail.com>
        (Robin Kuzmin's message of "Wed, 11 Dec 2019 12:19:24 -0800")
Message-ID: <87tv65hhvw.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Robin Kuzmin:

> http://man7.org/linux/man-pages/man5/elf.5.html
>
> I see the fragment:
>
>        A section header table index is a subscript into this array.  Some
>        section header table indices are reserved: the initial entry and t=
he
>        indices between SHN_LORESERVE and SHN_HIRESERVE.  The initial entry
>        is used in ELF extensions for e_phnum, e_shnum and e_strndx; in ot=
her
>        cases, each field in the initial entry is set to zero.  An object
>        file does not have sections for these special indices:
>
>        SHN_UNDEF
>               This value marks an undefined, missing, irrelevant, or othe=
r=E2=80=90
>               wise meaningless section reference.
>
> I interpret it like this:
>
>        A section header table index **(e_shstrndx)** is a subscript
> into this array.

No, e_shstrndx is just one of the possible indices.  It's just the
string table that is used for section names.

>  Some
>        section header table indices are reserved:
>        the initial entry **(index 0)**
>        and the indices **from** SHN_LORESERVE **to** SHN_HIRESERVE **,
> inclusive**.
>        **Such reserved indices, except SHN_XINDEX (0xffff), cannot be
> used in e_shstrndx.
>        If e_shstrndx is SHN_XINDEX (0xffff) then the sh_link filed of
> the initial ElfN_Shdr cannot contain such reserved indices.**
>        The **three fields in the** initial entry ** - sh_info, sh_size
> and sh_link - can be** used in ELF extensions for e_phnum, e_shnum and
> **e_shstrndx correspondingly**. **If they are not used then they are
> set to zero. All other fields of the initial entry are set to zero.**
>        **The section header table entries with the following special
> indices contain special values,         and in the ELF file there are
> no sections associated with such entries.**
>
>        SHN_UNDEF
>               This value marks an undefined, missing, irrelevant, or othe=
r=E2=80=90
>               wise meaningless section reference.
>               **This index can be 0 in which case it means the initial
> ElfN_Shdr with a special meaning described above.**
>
> Is such an interpretation correct?

I'm not sure if your clarifications are correct.  I don't think the
section header extension mechanism is used for extending e_phum.

The main thing that's not clear to me in the current description is
whether the 256 reserved indices have still entries in the table
(probably of type SHT_NULL).

Cc:ing Mark, in case he has further comments.

Thanks,
Florian

