Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ABC11E1213
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 17:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390998AbgEYPvm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 11:51:42 -0400
Received: from mout.gmx.net ([212.227.17.22]:57893 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388739AbgEYPvm (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 25 May 2020 11:51:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1590421898;
        bh=Rkx4f1Jx/5SamY354wSCeWBt6ae3wQwRYXCvM8z72lM=;
        h=X-UI-Sender-Class:Date:From:To:cc:Subject:In-Reply-To:References;
        b=Z6kid8qib4Bnxo1XPgSyD3ebzqUTH16m3cwnIhBUvzm7A7AqaLEtjCEDYDH6aA7Si
         4n2EHEFkWTPB1NvQNjbrFNNSP6FU8fInbJDZ1HH8bVqIGkUcdjop2BEnrSHRv6ubvQ
         ouQhkkTP78009FgtnTKnf8nzmVFgj6KgyUzfFKw4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mua.gmx.com ([68.56.186.98]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MtfJX-1ikJeQ2xOZ-00v5Wo; Mon, 25
 May 2020 17:51:38 +0200
Date:   Mon, 25 May 2020 11:51:33 -0400 (EDT)
From:   J William Piggott <elseifthen@gmx.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
cc:     Carlos O'Donell <carlos@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: The GNU C Library Manual - Authoritative or not?
In-Reply-To: <CALxWeYro-8KASpy--aMAsMzMK_mPN-ZFjdUgftaXXCTfy6rY5A@mail.gmail.com>
Message-ID: <nycvar.YAK.7.77.849.2005251130450.1230@zhn.tzk.pbz>
References: <501e5e0c-f293-b838-5106-764c6b18e061@gmail.com> <875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com> <b7102d1a-67b9-0f4f-8295-224fd7afba94@gmail.com> <6cf523c0-848c-911f-47e5-e663499db744@redhat.com> <7cc4b69e-af8a-d5ad-ac39-9b95deb19a71@gmail.com>
 <7d109eae-7993-d08c-0355-a03ebc56eeb2@redhat.com> <CALxWeYro-8KASpy--aMAsMzMK_mPN-ZFjdUgftaXXCTfy6rY5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Provags-ID: V03:K1:BG6NUzfBWtDWiqlVgW+DrHmuLHU86WkMv8wMfmHbJ6PrblLOQmk
 pmNnr3VCeza5uKuN818+yOed1ox62ihrHYIIP4kshBjy9VpiA5iFz1Ct0973vepSr6jRg5N
 UMTgVXOp+337GuLnvbyMkJKUxYg13OMqPBCZe1eHblqO4INPVuwpd0oRfJmNs0BwS0Xopqs
 OT7kjD33jhieBqbMjABvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4c0ST/XUNfo=:gKci0Fi+HWxswM+iCpCEr4
 MaykScReUx72ahNwTFxRiWqIvlBxjrWGpsLDreAVRcR+qfnh6cvgvZ6tdNxTpRgocMrlJsZqw
 RORuOOyJhH/FV71iqaYVt7qsj+cPxdmu+D7b5AmO0vPgHZSTh3IScifhnOnlPmoNEduqE3qOz
 oYvMSMYuV0QvpsnUPY6ug3p4v41WojO52kytWV4dDYPrSBbfRUKvIxLi4xTWtz+Toxxg57qtR
 msHWSGIUhTjrf76vWz/7xQFEcgRPfirT8rOJfqgfTBgcsR6rGhqf0vWKri5KirKmSHDvDnOEe
 aFBss5UixX9OoX1vzJXE+oKOhOTYTjzYOidg5GQ6AsE3zD4WovUe0/CsznsqYsSK2xpr04wtb
 ToWQVE1s4QVSGXB5zq+PEekQZrlZNQ6TG6rpruKD0Iz7vVfh8jbd+fLHmWcgUBewMak03xMFA
 d/6Zqo34oGvoTaTmyh7pxjGPtwOwMrd1TtsDBu0aZGV0dDQGEQqWXkFYTXYPhUw98UbP/A11S
 JNUTlE+3d2tF3qKwhaZVBCbrB2Mt2xO0NOsyeN0Okrbds6T/yPPZVGh776lR9IZCS6gSeYVeq
 1Dl3s+owkEWgGZl2FmudAst1T1zGBSOQd7HuELdBdMnST657BhBpxRM11y/BwSWLRlj6XzRLI
 V1dgkjtnoaXa0D55gC61cbqa9oUVboyKUX0iT0RGRnRENmZECsVh/8CeEHPUjmOrezHYlvAZP
 1bwkezPIo1UqIqJ5O848UH3Q9rnSsRTIcmHPV+CCzjlm/RlTlG/Km5Q/clDrUvXeRDbnDTw7p
 /sQTf1TL0D5XwVnuibYt4rBjVkl8QisxVzaZA4AKPBRlui/lNh6hf3dpJ0B1NMbiTx3WbZFUa
 C+mE0WRlWDlrHg8Z021tEMi13YAU+JSlLMppCmDjr7y2+PNuQvC7Ks4KANZAODK74VcVL5IM8
 Xx8tv2zF7CwhlijjC2EJpuFo3tnoDHuclXoFMeeiLBfomVTBVX9GNn/YHeBaqUqbfyYPFIgQ5
 53392PxCjFxAt4EAlfSUihgkCsq5tYYrlarjz0sKaV7FJHqeam2TXYD6dLVG/ePko/A3y6CZW
 fHK7WD9gucsACqmSnvHK/9ok+IDi42GMERiaXpdHL+OkRyCS/Xoz2RG6Bc6LoZpcOyaWM0fsX
 fNxluFzdAfI/UjDU19G9ZwLUNqYXu3UBsoxxYSQB8sfDspNLpAO0Ulp1GIOlsLHvq0/dj+kph
 E5Ivf3JOttTSnI5o/
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On Mon, 25 May 2020, Michael Kerrisk via Libc-alpha wrote:

... >8
>
>> We really need to engage with technical writers
>> and involve a broader set of industry skills in our projects.
>
> I want to add a note of caution here. It's great to have technical
> writers (and like good developers companies should be paying them),
> but they can't do the job on their own. A lot of developer input is
> still required.

Another caution, many HR departments hire 'technical writers' that in
reality are copy editors, who's knowledge base is grammar/writing/language.
In my experience, they tend to make things a lot worse. Wordsmiths like
to use words, lots of words. They want to create novels. The complete
opposite of what technical writing should be.

>
> Thanks,
>
> Michael
>
