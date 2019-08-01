Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 52F0D7DC65
	for <lists+linux-man@lfdr.de>; Thu,  1 Aug 2019 15:17:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729638AbfHANRW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Aug 2019 09:17:22 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:33939 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728592AbfHANRW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Aug 2019 09:17:22 -0400
Received: by mail-lj1-f195.google.com with SMTP id p17so69360570ljg.1
        for <linux-man@vger.kernel.org>; Thu, 01 Aug 2019 06:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5+NHzguXl6Ok+njz3QS3rsO/K+2oxqxv3C/OvlSg80g=;
        b=N33veXzqjMBf1yYX8jXJ6AgGhEbOV3q89hYNXC3Wuk9IDokxs1BoqDIsNWT/n3en0J
         VowKIMQXPYRUz7dUP6J8LAkoUzJ75+TXvZeqJlwzoRct/UMvjHIP8a4E+Ar0buXqT2UM
         he7YFcOtF9nhrtdRHiIIFcTxz+4L5NxYVmZUduzpi10006sObwC/zd2U1FhgZ8CtrjOX
         HZwoX40kF4pU3vW5U1lA8NAR+ZXTCt8pw41kwZ90chRNmMSQer4Nq2XVRENDsAU4KwQB
         6fi02EGOoxtq8XdEdL28vlU5b6Gadis7RFoLmnlAbCE/RBg4S0N6pzqQLmVN1F+PbbLF
         OLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5+NHzguXl6Ok+njz3QS3rsO/K+2oxqxv3C/OvlSg80g=;
        b=fQEuKpHJ0j4q8IHpnphJHVogDc03yJ+lTOwaWdiB/7UfPDhLN42ZldEu1uPdblpy97
         l7V4eMONX2FH9xGL/t9VeE8MGIdwemyxlBOoEfvgKjpi5uXFeF41tXm5/cw942Fou+ce
         DzjUvLe8ZSWhIsdYnXPmovgxsvzVWSR+MPu3EcAPuGnOD6sONzz7ZmFHjTFxj7Bak+0L
         Siwc1aC0gNnbkKoJw3HOyz85z9CaoI8vkaqwpkMb/QnMcVDfyEAhtzv9rYWfJg//+d3H
         e0a7ygVR0ijHmu8G4CDd73CG8CODelEJ5Wr/addG/jUVOTBJWkADQRV3grF4tIWQzoFv
         39/g==
X-Gm-Message-State: APjAAAUa/cpR8XmzKjkc3Z8vFZmYf5ZjMWb2UDieOqsaVIh5+Ae9h5TO
        WZXuoC83284Di/erbORDYvLNmcmyO+q8PGXfx+E=
X-Google-Smtp-Source: APXvYqxCMDniJr1mCdfWvo2yQKd9MUAZc+/vKrawuu8MSIL8mbMvQzNFyOQCdMA/N81OjTKsOE3+rgQ19Y23sJ1VmQg=
X-Received: by 2002:a2e:9a87:: with SMTP id p7mr67874974lji.133.1564665440004;
 Thu, 01 Aug 2019 06:17:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190624014047.GA14572@localhost.localdomain> <f053fe2c-20e5-4754-8b13-89cddfbfb52d@gmail.com>
In-Reply-To: <f053fe2c-20e5-4754-8b13-89cddfbfb52d@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Thu, 1 Aug 2019 16:17:08 +0300
Message-ID: <CACKs7VB6ujOhV55MRXSVyJwr=S7AJp0Vun7_9_nxssMftm00SA@mail.gmail.com>
Subject: Re: [PATCH v2] socket.7: Add description of SO_SELECT_ERR_QUEUE
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Ricardo Biehl Pasquali <pasqualirb@gmail.com>, corbet@lwn.net,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

2 cents from me :).

On Mon, Jul 29, 2019 at 10:30 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
> What would you think of something like this:
>        SO_SELECT_ERR_QUEUE (since Linux 3.10)
>               When this option is set on a socket, an error condition  on
>               a socket causes notification not only via the exceptfds set
>               of select(2).  Similarly, poll(2) also  returns  a  POLLPRI
>               whenever an POLLERR event is returned.
>
>               Background:  this  option  was  added  when waking up on an
>               error condition occurred occured only via the  readfds  and

Spurious 'occured' on the line above.

>               writefds  sets of select(2).  The option was added to allow
>               monitoring for error conditions via the exceptfds  argument
>               without simultaneously having to receive notifications (via
>               readfds) for regular data that can be read from the socket.
>               After changes in Linux 4.16, in Linux 4.16, the use of this

Duplicate 'Linux 4.16' here.

>               flag to achieve the desired notifications is no longer nec=
=E2=80=90
>               essary.  This option is nevertheless retained for backwards
>               compatibility.
>
> ?

I haven't looked at the kernel commit; just by reading the text, I'm
not sure I understand the feature: is the idea to tell select() to
notify you of errors when a read or write fails? That's what I
understand from the sentence starting with "Background:". The next
sentence, however, suggests it gives you the ability to only select()
for errors, without caring for read/write fd events. Your description
is definitely an improvement on the original text, but still somewhat
ambiguous.

>
> Thanks,
>
> Michael
>
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
