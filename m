Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1BC31B0491
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:37:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726100AbgDTIhw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:37:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTIhw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:37:52 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D52D1C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:37:50 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id s9so7253503eju.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=SCN0YGxjgc7QAXzlc0mCW0WhMBszTANTLWMSyZ10SG0=;
        b=SwA8YY8IqBJHSU8pdGuR0zSq+kbuD7P7QAfp4hd8+Pcl0VfQKda561TH+ClOhkA37S
         bhvzRDPmF3wYGCiQ4PuWP436dmVS6uToAkitqV4i05jk1Or1doGYCQBWTQ6I9OehP1G7
         vwLC+RA88LDRiX+FLCYV0EpjkAETdAxTeFPe0G50nMY67sEgnH0gDT1+27uzdaRz85Uu
         pxxgAHggEFPh9B80IOrtMLq/D7yUYvvZNcY0c14bLTGX7w4lw3Rm8mRbuwcXtUnqjRVE
         23cd7YlSSmVoHtOG6kZ1NCrX47jUF4f+FbeABzwk1gMx97OybsCI5KExkv7foCwJLYJI
         o8fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=SCN0YGxjgc7QAXzlc0mCW0WhMBszTANTLWMSyZ10SG0=;
        b=tNLpvrh0v//odjDGCAbndg4mDH2THCZX3d2gYih5nWXtAG72ZlH9lJzolDbUbboXNJ
         2ft63+WaY4eC5UlVMSMWitMVVxmO6WsNf8+BScLwe5d2e6jwSXHzmXbIknVhXX3e3mzs
         j66j+V7NIMm8CkhNWYlx87LTomtte0heox1R+1YKAKtTE6esQ+ZtgQ+gMlaA+WQ/Npce
         5IA1HNG1t8Q9clFyNsma4dYJeJ0D2t5sWFUGE6z5SIQvKw3FrVPZQYjXsZJc3j+OHOvt
         ysuMwZAIo+TwNezymngvYJgBRn8VYPWfpgH36C1SmeM8Oaz17k6w0H0Y11xPHbr3YsFt
         Gw1g==
X-Gm-Message-State: AGi0PuZFJ6fZ2Xjpj7Y678k3cO3E/17pULrkTuQ0r+iIcXG0vXuj67Qb
        mBY49EdSdhPME7/XBIjL/UIWc7o6afJxeytY68NzsuDS
X-Google-Smtp-Source: APiQypL1y+VsydPWYQD9kOYCTEr12osKfuwSyZ4bereXtes6PRtzKI8ILbe3EUQb02WoolDueaN+kNRW8OmcYyOQ69s=
X-Received: by 2002:a17:906:4903:: with SMTP id b3mr9245304ejq.80.1587371869357;
 Mon, 20 Apr 2020 01:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <d14c92ee-ba52-5821-5cb5-c3b476055770@debian.org>
In-Reply-To: <d14c92ee-ba52-5821-5cb5-c3b476055770@debian.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 10:37:38 +0200
Message-ID: <CAKgNAkhNufmY1T191WADHF-Oeu4_KgYmAAQrumDuAc2x+ENL1A@mail.gmail.com>
Subject: Re: Error in the nsenter.1 page
To:     Jean-Philippe MENGUAL <jpmengual@debian.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jean-Philippe

Bugs in that page need to be reported eolsewhere.

See http://man7.org/linux/man-pages/man1/nsenter.1.html#COLOPHON

Thanks,

Michael

On Mon, 20 Apr 2020 at 00:47, Jean-Philippe MENGUAL
<jpmengual@debian.org> wrote:
>
> Hi,
>
> Sorry for not producing a patch but I dont understand the syntax in the
> file. Here is the problematic string:
> Children will have a set of PID to process mappings separate from the
> .B nsenter
> process
> For further details, see
> .BR pid_namespaces (7)
> and
> the discussion of the
> .B CLONE_NEWPID
> flag in
> .B nsenter
> will fork by default if changing the PID namespace, so that the new program
> and its children share the same PID namespace and are visible to each other.
> If \fB\-\-no\-fork\fP is used, the new program will be exec'ed without
> forking.
>
> I think it is buggy. The "For further details, see..." seems at the
> middle of two sentences explaining the same thing, should be moved at
> the end of the paragraph I guess. I think I will try reordering the
> sentences in the translation to avoid keeping a fuzzy until the next
> release, but the translation will then be different from the English string.
>
> Thanks for your feedback
>
>
> Regards
>
> --
> Jean-Philippe MENGUAL
> Debian Developer non uploading
> Community team member
> Accessibility team member
> debian-l10n-french team member
> President of Debian France non-profit organization
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
