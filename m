Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2AFF812AAD5
	for <lists+linux-man@lfdr.de>; Thu, 26 Dec 2019 08:45:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726001AbfLZHpy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Dec 2019 02:45:54 -0500
Received: from mail-io1-f67.google.com ([209.85.166.67]:39093 "EHLO
        mail-io1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725815AbfLZHpy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Dec 2019 02:45:54 -0500
Received: by mail-io1-f67.google.com with SMTP id c16so21177347ioh.6
        for <linux-man@vger.kernel.org>; Wed, 25 Dec 2019 23:45:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hgL6jrJ3e8Iy8PzdVJo4Stcrlx2vdH/ME9ytbk6zjDY=;
        b=rH8ixGpur2eY9j1BDW3/Lhoc7Pxv2t3Z6NhJ0815MFZ8R53L5sZob2+ZnChpgu1Hha
         pHs8jxGNTgNvyNxv1TOoamzdUB3gjo4mOTj0VIRD76Fqn4s6ZYPSmjNpVg7Z40uaK1vj
         VHzy8KbgYDw8f+qP4V9sWYhj9/dEnEV6OA5MCsrhAPFftjfOn17vBVFB8KweUTxSJPXw
         qlk0JW7VEUQQWIOeTBJGJx28awG+No2E+PUE/pjrHaZZAWNvfyvQFrIvEKTf7uKuFSC8
         XR4bsPRSzoij+87eb7EV/7+0V+d4zMDwnlwp/xx3GyKUHyKZjZCgE8aNxXDwsOGZRgXj
         vWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hgL6jrJ3e8Iy8PzdVJo4Stcrlx2vdH/ME9ytbk6zjDY=;
        b=gcURqMPVzmSp9XJUpGt5JCPPcyQBLb+QFbGp29C23lkkpkMwgaqdwvJQuOyzPzRD6q
         pyrslqNXlI52VfS3I0HXdeAlcpjqrdmUxjxO5HEBXbKj+XvuTxpfbHpBjCQJqejJRNkV
         v9KmHhm/x/4SC2mygHRlQxhKdqsvpOR9MDkvRHnRnN/oo7Xng73u6wjBsgq8KBWDSCMG
         /J0E8seIS/zYzV3aWlv4l9/K1qfh1X0+bKbr68HPMB5tw42amOkMWe0o+z2Em1oZef3L
         rx4MYA6/UW0SszttezOyre5qZGJqXYNDaXJX5bf+USCJvpDNWXWczrNpkIbN5nVixBtN
         rO5Q==
X-Gm-Message-State: APjAAAVGJb19K2oBEdwSq6H20VzwBzZipycT3JEYZwjh3egV4jB48+nd
        r6ZOHA+LHLotLGxLNA6jEJV9KW0fS7iQrgSYxcoGTG/C
X-Google-Smtp-Source: APXvYqxcU3lhaDoYSPs89ENWT78fTyv5aRBkLKXDc3AziMiIWRD2ie7l5ZRSsFAxV1hqpGIWmcSPIixURMursvZjYLA=
X-Received: by 2002:a02:c6d5:: with SMTP id r21mr24451958jan.129.1577346353338;
 Wed, 25 Dec 2019 23:45:53 -0800 (PST)
MIME-Version: 1.0
References: <CALzkOGiTYq8t1q_MXYpH4apF6nvhQsL3MNwbsULbKxY3rQe1cQ@mail.gmail.com>
 <8519468f-e9e6-9a7e-8a6c-8ef18cf24213@gmail.com>
In-Reply-To: <8519468f-e9e6-9a7e-8a6c-8ef18cf24213@gmail.com>
From:   Sergey Oskotskiy <sergey.oskotskiy@gmail.com>
Date:   Thu, 26 Dec 2019 10:45:42 +0300
Message-ID: <CALzkOGjRhD1WCq51iEdsV22fhz=2DZCfetpaSmNDfQ=4y_7O=A@mail.gmail.com>
Subject: Re: typo in ioperm man page
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

Thank you for your reply. Sorry if I am wrong about the typo. My
reasoning is as follows:
in the GLIBC source code (for versions 2.27 and 2.30) I see the
following comment before the declaration of the function ioperm(): "If
TURN_ON is TRUE, request for permission to do direct i/o on the port
numbers in the range [FROM,FROM+NUM-1]...". As far as I understand,
port numbers here are individual bytes (not bits) in the I/O address
space.

I ran the following sample program under GLIBC 2.27 (under Ubuntu
18.04, Linux kernel 4.15):
#include <stdio.h>
#include <sys/io.h>
int main(int argc, char* argv[]) {
  int i;
  i = ioperm(0x378, 1, 1);
  printf("ioperm() returned: %d\n", i);
  outb(0xFF, 0x378);
  printf("1-st outb() completed\n");
  outb(0xFF, 0x379);
  printf("2-nd outb() completed\n");
  return 0;
}

When I run this program (under privileged user), I see the following output:
   ioperm() returned: 0
   1-st outb() completed
   Segmentation fault
So, on the second call to outb() the program receives a segmentation
fault: according to outb man page it means an attempt to access an I/O
port without prior getting permission to access this port by means of
ioperm().

If in the call to ioperm() I change the parameter num (the second
parameter) from 1 to 2:
   i = ioperm(0x378, 2, 1);
then the program runs without segmentation fault and gives the following output:
   ioperm() returned: 0
   1-st outb() completed
   2-nd outb() completed
i.e. the second call to outb() also succeeded (because ioperm() now
permits the access to both I/O ports accessed by the program).

It makes me think that the num parameter of ioperm() function
specifies the number of whole bytes (but not bits) in the I/O address
space.

Best regards,
Sergey


On Wed, Dec 25, 2019 at 9:25 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
>
> On 12/25/19 8:51 AM, Sergey Oskotskiy wrote:
> > Hello Michael,
> >
> > I think the ioperm man page
> > (http://man7.org/linux/man-pages/man2/ioperm.2.html) has a typo:
> > it says "ioperm() sets the port access permission bits for the calling
> > thread for num ___bits___ ...".
> > I think it should be "...for num ___bytes___..."
> >
> > With best Christmas wishes,
>
> Sergey,
>
> Can you say more abut *why* you think it's wrong.[1] That would
> help me investigate.
>
> Thanks,
>
> Michael
>
> [1] At first glance, I suspect that the existing text *is*
>     correct.
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
