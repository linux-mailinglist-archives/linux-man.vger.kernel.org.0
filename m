Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4A61F11C625
	for <lists+linux-man@lfdr.de>; Thu, 12 Dec 2019 08:00:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727994AbfLLHAV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 12 Dec 2019 02:00:21 -0500
Received: from mail-ed1-f65.google.com ([209.85.208.65]:35673 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727970AbfLLHAV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 12 Dec 2019 02:00:21 -0500
Received: by mail-ed1-f65.google.com with SMTP id f8so898428edv.2
        for <linux-man@vger.kernel.org>; Wed, 11 Dec 2019 23:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=E5YnjUFynIps6a/+1LirSSsAv/GhI5O5eX4enTxTNsw=;
        b=cb2BulcLqg0k9CllV8mZmNaUUaTmDB5gmMOIT5D0vmBigkJx8ZEl1lI9os2SV6D4jz
         gxLu33V4AZTnZHJxNbQrjFDoPZA/MQTN/BGT66g0+G49HhymlFJkGUCuvbKvNd2tFKdI
         nPP+2wv/dnkU1fDO24Pu6vG3cDfd46sYdMR0byru04+4wyLqLTgYwJ75lZeEbBV0ynep
         r+agJG9FjOtQHhf6LPkyspETd4AkfaWsYZnnmur45R5MO0w/QNeFTYon+ZQ8bnPdL9P7
         9I5fmKyrvN459UFQQRLsBTuBPKlAj7NQjRptImYYOalR0RuY0Z4LGZ2feRhemkWAFurs
         OVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=E5YnjUFynIps6a/+1LirSSsAv/GhI5O5eX4enTxTNsw=;
        b=YO4+izXTvVUy2IjAl/JnnB3MdWXKQV1IgzELt5PR4rOnGuSlkufhJ8tbb9yJF4aN4R
         GZ1iRlZsr68uIsLXte6bINOhC8XxwSR6CjQl4XEXiG9dl+vW5iQb98HPqq2PgsG4VPDr
         nE4zfcuXymhkbyPJrlqyLfIYq2h79cbyMiFXDYr4EexBIdNUA9LkNEgBmbzoijsRDehu
         3jN9GSTlLwPYmSwfpYIJUL8Vm2NcLmiqLsiVJpY+3DFazsHoXMCthUG/sGVxCZbM4JF5
         YBzO9GvY7Q4bEG46gx0j4ZfAe2LlmCr1o/P1st5KXe2rcfyp+0NptplDtDgbyGuTwO9T
         V/Tw==
X-Gm-Message-State: APjAAAUDXc5Gv+bLbpxriSl+4+yeE+Uv/j2jOsqLfRG9eMnCgskYGON9
        A5GTqQaOQfM3SIZ+bsRp6UOY77UfSVlunjyK3mc=
X-Google-Smtp-Source: APXvYqyAkO7+/3/yX6dbXt/CXWggXR4NyCGvVDO9oSscjC1oVefgCMK8KXbrFHO7CY86P70PSDXsVtjhBDnd0UuXqx0=
X-Received: by 2002:a17:906:27d3:: with SMTP id k19mr7980811ejc.290.1576134019445;
 Wed, 11 Dec 2019 23:00:19 -0800 (PST)
MIME-Version: 1.0
References: <CAAztzVHSQPAxY4zcmxtj8v8geEu=SJiSPPBBsZRxUeacxHO+-w@mail.gmail.com>
In-Reply-To: <CAAztzVHSQPAxY4zcmxtj8v8geEu=SJiSPPBBsZRxUeacxHO+-w@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 12 Dec 2019 08:00:00 +0100
Message-ID: <CAKgNAkiO=H+8WAxouYih7OBj3gbt2S85Azhob=+iJAHE8f8S1A@mail.gmail.com>
Subject: Re: elf.5.html: Resolving confusion.
To:     Robin Kuzmin <kuzmin.robin@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Robin,

On Wed, 11 Dec 2019 at 21:19, Robin Kuzmin <kuzmin.robin@gmail.com> wrote:
>
> http://man7.org/linux/man-pages/man5/elf.5.html
>
> I see the fragment:
>
>        A section header table index is a subscript into this array.  Some
>        section header table indices are reserved: the initial entry and t=
he
>        indices between SHN_LORESERVE and SHN_HIRESERVE.  The initial entr=
y
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
> into this array.  Some
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

I don't know, but if you have a clarification for the page, let me know.

Thanks,

Michael



--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
