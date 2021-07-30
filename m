Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7C773DB038
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234966AbhG3AVL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 20:21:11 -0400
Received: from mail.kernel.org ([198.145.29.99]:49734 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234931AbhG3AVL (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 29 Jul 2021 20:21:11 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3C67A60C3F;
        Fri, 30 Jul 2021 00:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1627604467;
        bh=Voc7pR8ClvZssJrs9N5F2rtYSr+aByYYaKq5n9gS64c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Cs92HakQ5JLBDA0TJJLdlyKO28auE+c8z6o0iLuMhpyoPNPKAuQCIdbqPt6xYAsP0
         xVE/G1157v7p1dV3jav4m7MmcapdvgiLVAW/43Iq7/Jsvn8DvcckZZIJpB2FZeTmnU
         s62wK+Aya7izqqzrIEwxdmtT0E7T5vO4ihRv7Tof0x02jYu7u8+WzpzA85qT2VYFjj
         I0VAmDFmawVIK0ecSDhfFzZsQhIsT0rwnHHhHqPp9kGlFxqTersNHj1ovsG+0Wf1na
         gwQm8WOxSZMXxwqPXjZLrAz+rGmLwqcciNhX/KiK43iC8zzquYjdWxZNV9e+PTq/mC
         uXpHpPJjk+3SQ==
Received: by pali.im (Postfix)
        id DC1FE888; Fri, 30 Jul 2021 02:21:04 +0200 (CEST)
Date:   Fri, 30 Jul 2021 02:21:04 +0200
From:   Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_tty.2: Document ioctls: TCGETS2, TCSETS2,
 TCSETSW2, TCSETSF2
Message-ID: <20210730002104.ug6gfh3xh4anh3e5@pali>
References: <20210725225506.7404-1-pali@kernel.org>
 <271f5402-95f5-4e65-84ee-a227879e1c33@gmail.com>
 <20210729173118.pud4xucnt4kncvol@pali>
 <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d48a1dd-9641-53e9-bb65-868c86f22821@gmail.com>
User-Agent: NeoMutt/20180716
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Friday 30 July 2021 01:39:11 Alejandro Colomar (man-pages) wrote:
> user@sqli:/usr/include$ grep -rn 'struct termios {'
> asm-generic/termbits.h:12:struct termios {

You have there a mistake. It is 'struct termios2', not 'struct termios'.

And for 'struct termios' it is more complicated as there are two
different 'struct termios'. One in file <bits/termios.h> (included from
<termios.h>) and one in file <asm-generic/termbits.h> (included from
<linux/termios.h>).

Function tcsetattr() uses 'struct termios' from <bits/termios.h> and
ioctl TCSETS uses 'struct termios' from <asm-generic/termbits.h>.

> user@sqli:/usr/include$ grep -rn '<asm-generic/termbits.h>'
> x86_64-linux-gnu/asm/termbits.h:1:#include <asm-generic/termbits.h>
> user@sqli:/usr/include$ grep -rn '<asm/termbits.h>'
> asm-generic/termios.h:12:#include <asm/termbits.h>
> user@sqli:/usr/include$ grep -rn '<asm-generic/termios.h>'
> x86_64-linux-gnu/asm/termios.h:1:#include <asm-generic/termios.h>
> user@sqli:/usr/include$ grep -rn '<asm/termios.h>'
> linux/termios.h:6:#include <asm/termios.h>
> user@sqli:/usr/include$ grep -rn '<linux/termios.h>'
> user@sqli:/usr/include$
