Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71D741B1610
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:42:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726117AbgDTTmC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726697AbgDTTmC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:42:02 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1762FC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:42:02 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id r7so8370418edo.11
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=zr3TL3QGQZCINur5sadoQ3MUF6TYr0zJmVI82xYBqBU=;
        b=OV0E3yJV5Z9wKa/9xvaOVL9zcZcpSO8Xua++JSZYmrGK1F5q0LgZtQCuvelUw79UfP
         BkrNxR8a2rtoOBoMWkl/DbHKZ1vlZW0YelkDc59uyd/dAxs1J4vHDxs2qQBT34RUn5qa
         i9J4u2LCrw1bN/J3dNQMvnzsmO6EgDC5HZnHNPLc9WnTlOWQ6Q2YLRE0jsanLViSwK2Z
         e00YdtNZUf3Ji4QcZPc520DdYNAtS92bgmKc2jPAYhXzLpGlMt2LjTs6YQ0AYa2fvO9T
         yjm7heAjszpKnsiYl79A7Z3Rw0O/CH4HqJRhYofnzVw352ElQWjwRyBUjG5F41r4sCis
         jNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=zr3TL3QGQZCINur5sadoQ3MUF6TYr0zJmVI82xYBqBU=;
        b=ickBcF7MLrqm8zNbyYjJKvUdjg1kZIJM/URTmcVrLVZLgdivK/4sFbvwg4AC3l7iWd
         kvJSzEQQzScpeBvkpa1lgklbDSIgKjs9OAsE9OjlmCcvYrhIA925J67/HHnKldFjIoPD
         FGiBYrB2csgmp7HVgi4S+fpTUAXbujG+cDIsmpnOo/7XTn2WwJ0rnU9H9XdY9eZFaoEb
         /BcrHsoGgJFBw4VNnYd5tsM6/X8RwjCi9gRrMg6yU/qaPZvZSp9HUcO71rCj8u4tRw5B
         CYGal1sKlAX0vctDmaBuG/BX+dDK1m+3fw9JDDBiapQGF1+5j+LpDTXpc3koVFJ+kGqF
         qvzg==
X-Gm-Message-State: AGi0PubIPKu94Df2+wfp2rTWF7UuU6IFairzpfj4mRTloTX2byVxlnW8
        KyQjjerbru869GYdWfUIZM9BAS3Y1IBdJt8O93B9Fw==
X-Google-Smtp-Source: APiQypL6VR4aHqhCOwmvkIYQ0JEPPtD1hjNCwpre+dVMeEAKLgHr+E/AJxI58g0veqJFubfAbSy6V46hYLR1tnN5MgI=
X-Received: by 2002:a05:6402:17f1:: with SMTP id t17mr4349339edy.239.1587411720710;
 Mon, 20 Apr 2020 12:42:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
 <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com> <60355D0B-FEDB-4F67-8B38-E3614B9BAC97@kolumbus.fi>
 <CAKgNAkiQXgavV88Aou8e3MQ=HO2vyp4FFBZ7Q5GXuXD20EUMLw@mail.gmail.com> <7FA79E79-F535-41C7-874C-067DA41E07D8@kolumbus.fi>
In-Reply-To: <7FA79E79-F535-41C7-874C-067DA41E07D8@kolumbus.fi>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 21:41:45 +0200
Message-ID: <CAKgNAkiS_OSQadsT+Tj_LM8iUPC+4pT3RLrCU0Yj3Hd1vMR50w@mail.gmail.com>
Subject: Re: Errors in man pages, here: st.4.po: Wording
To:     =?UTF-8?B?S2FpIE3DpGtpc2FyYSAoS29sdW1idXMp?= 
        <kai.makisara@kolumbus.fi>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Kai,

On Mon, 20 Apr 2020 at 20:49, "Kai M=C3=A4kisara (Kolumbus)"
<kai.makisara@kolumbus.fi> wrote:
>
> Hello,
>
> > On 20. Apr 2020, at 21.25, Michael Kerrisk (man-pages) <mtk.manpages@gm=
ail.com> wrote:
> >
> > Hello Kai,
> >
> > On Mon, 20 Apr 2020 at 17:59, "Kai M=C3=A4kisara (Kolumbus)"
> > <kai.makisara@kolumbus.fi> wrote:
> >>
> >>
> >>
> >>> On 20. Apr 2020, at 12.48, Michael Kerrisk (man-pages) <mtk.manpages@=
gmail.com> wrote:
> >>>
> >>> [CC +=3D Kai]
> >>>
> >>> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> >>>> Dear manpages maintainers.
> >>>>
> >> ...
> >>>> **
> >>>>
> >>>> media =E2=86=92 data
> >>>>
> >>>> msgid "Go to the end of the recorded media (for appending files)."
> >>>>
> >> End of media is the end of the tape. End of recorded media means
> >> after the last record/filemark that has been written to the tape. Usua=
lly
> >> (not always) you can write more data after what has been written
> >> so far. End of recorded media is standard tape terminology.
> >>
> >>>> --
> >>>> drive =E2=86=92 media
> >>>>
> >>>> "B<GMT_WR_PROT>(I<x>): The drive is write-protected.  For some drive=
s this "
> >>>> "can also mean that the drive does not support writing on the curren=
t medium "
> >>>> "type."
> >>>
> >> This basically means that the drive refuses to write to the media. It =
can be
> >> write-protected by the user. The additional text hints at the possibil=
ity
> >> that the drive can only read the media type in the drive. It is quite
> >> common that drives can read, for instance, several old formats
> >> (usually with smaller capacity) but can write only the newest types.
> >> Many times the user may not know very well the properties of the
> >> drive and wonders, why can=E2=80=99t I write even if the tape can be r=
ead
> >> and the write protect tab is off.
> >
> > So, if I understand right, then no changes to the wording are required?
> >
> I don=E2=80=99t think changes are necessarily needed. I don=E2=80=99t fin=
d any errors
> here. But when the text is not clear to readers, I always ask myself,
> should it be made clearer. I have understood that the man pages
> must be precise, but not too long. The requirements are different
> for the different sections of man pages. For instance, section 1 is
> meant for =E2=80=9Cordinary=E2=80=9D users but section 4 is for low-level=
 interface
> to device drivers. I think we can assume that the users of
> section 4 have some technical knowledge about the device they
> are interested in programming.

Agreed.

> So, I don=E2=80=99t think changes are necessary. But I don=E2=80=99t obje=
ct if someone
> wants to enhance the descriptions

> Okay.

> as long as they are precise and not too long.

Rather like your mails :-).

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
