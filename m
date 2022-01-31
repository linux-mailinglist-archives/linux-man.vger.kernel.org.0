Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F077A4A5312
	for <lists+linux-man@lfdr.de>; Tue,  1 Feb 2022 00:18:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238029AbiAaXSE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jan 2022 18:18:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237951AbiAaXSE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jan 2022 18:18:04 -0500
Received: from mail-vs1-xe29.google.com (mail-vs1-xe29.google.com [IPv6:2607:f8b0:4864:20::e29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65287C061714
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 15:18:04 -0800 (PST)
Received: by mail-vs1-xe29.google.com with SMTP id r20so13910878vsn.0
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 15:18:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=R+t6OwzQnOraBcYoqJUqEE3osjUt7KTSHX+3SBK0R50=;
        b=qT8EH6/2jtTC4ZjGw+KgGWOcHwo0TnHzhSUxXntMWOC7VZJgKr6Z1Tq9b0Pgujqtk2
         ko31tKarlJ0w92r+d/AkcBZ6lwAL6ABm7C6ViEhoU+6r7/DXxf6iu0K/U05TQzdIGW95
         xdh0TAZnZSA+SOkk+lg9qL7GSirjT4IFHMaywYMw78Bjnt72CKnglcXHaZMFDCfuUMFG
         RD7sNdck5qGOkBxzuUubnUv+VQgRyWmdvyE1cgJAnQNbY0E/irWXyqRDZ7ecZqhi2Wi3
         KJFSdbQvkmEoDdCj1qZ5QJUw5R1DY0zYAtXDwMhKlh8h+kKUV21ZiAf+yjcBx6ew2H1H
         HRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=R+t6OwzQnOraBcYoqJUqEE3osjUt7KTSHX+3SBK0R50=;
        b=Ni/+3ot17F3fQ4RTIcoepn2onF2g20a6jnR1vszOaCDH08p66eNAY0O9jTycNyF17Q
         k4BankdHtifRFTSZXgGmIs2QobqJWsmoSIqrPrEq+Ck7DDIzYWJA60t7HC/vMn2J3yqF
         wPkcV4ZUAaDN/AlLCN94ByKCiPLdY4KSGIVAVdFA9QNfuQbCbH3RCvsmR8/8cefMIHqI
         9FKaiCvBqlRrASRYrXDLd3ox3MEyfhFe6CC6H7e8T6yjK6ExzUU2ve3u4IfY087XR+KO
         dw0XMglu+kuggNVuI+ImVcS01KBHGjJIxN4AS/Gex9jc/5WmIZrSDkFOtm2/nCUGl+s9
         DI2w==
X-Gm-Message-State: AOAM532yuSohKnOBo5NDCWTNvveszHFQDBD5Zj3vnZVhgq4TIMbsiCq9
        T26wlgZjbhf0etHyW5+DiiwLFPucfp7MgwYLCG0=
X-Google-Smtp-Source: ABdhPJwAzWgpOUoiZfUZd2bCnUEAlH/2D7rL63+xSHfr9Par9Vu3tar2uhrkbDVfjfwGdLdP3ySdQAsqxi4eaP52AmQ=
X-Received: by 2002:a05:6102:3f02:: with SMTP id k2mr8558846vsv.20.1643671082991;
 Mon, 31 Jan 2022 15:18:02 -0800 (PST)
MIME-Version: 1.0
References: <CADVL9rE70DK+gWn-pbHXy6a+5sdkHzFg_xJ9phhQkRapTUJ_zg@mail.gmail.com>
 <55d40a53-ad40-0bbf-0aed-e57419408796@gmail.com>
In-Reply-To: <55d40a53-ad40-0bbf-0aed-e57419408796@gmail.com>
From:   Mathnerd314 <mathnerd314.gph@gmail.com>
Date:   Mon, 31 Jan 2022 16:17:51 -0700
Message-ID: <CADVL9rH+4ptFTnJwD7u5b=j-H7VkOaya7Cd49EdhxPNH-6=T6w@mail.gmail.com>
Subject: Re: EINTR for fsync(2)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jan 31, 2022 at 1:44 PM Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Mathnerd314:  Thanks for the report!  It's useful to CC the relevant
> kernel developers when reporting non-trivial bugs such as this one.
> They know better than we do.  :)

Ah, but then I would have had to know that this is a non-trivial
question, as opposed to a 2-line patch. And CC'ing kernel developers
is not mentioned on
https://www.kernel.org/doc/man-pages/reporting_bugs.html.

Oh well, there's always next time.

-- Mathnerd314
