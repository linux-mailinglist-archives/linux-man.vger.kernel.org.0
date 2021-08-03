Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 684DC3DEDD5
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 14:28:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235573AbhHCM2r (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 08:28:47 -0400
Received: from mail.kernel.org ([198.145.29.99]:47396 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235721AbhHCM2r (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 3 Aug 2021 08:28:47 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6588060F56;
        Tue,  3 Aug 2021 12:28:35 +0000 (UTC)
Date:   Tue, 3 Aug 2021 14:28:32 +0200
From:   Christian Brauner <christian.brauner@ubuntu.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Christian Brauner <brauner@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2: Minor tweaks to Chirstian's patch
Message-ID: <20210803122832.3c7c6g4o5wg5pazb@wittgenstein>
References: <20210802104215.525543-1-brauner@kernel.org>
 <20210803113540.330533-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210803113540.330533-1-alx.manpages@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 03, 2021 at 01:35:41PM +0200, Alejandro Colomar wrote:
> - Fix SYNOPSIS to fit in 78 columns
> 
>   Also, we don't show when an include is included for a specific type,
>   unless that header is included _only_ for the type,
>   or there might be confusion (e.g., termios).
>   Instead, that type should be documented in system_data_types(7),
>   with a link page mount_attr-struct(3).
> 
> - Fix references to mount_setattr().  See man-pages(7):
> 
>        Any reference to the subject of the current manual page should be writ‐
>        ten with the name in bold followed by a pair of  parentheses  in  Roman
>        (normal)  font.   For  example, in the fcntl(2) man page, references to
>        the subject of the page would be written as:  fcntl().   The  preferred
>        way to write this in the source file is:
> 
>            .BR fcntl ()
> 
> - Fix line breaks according to semantic newline rules (and add some commas)
> - Fix wrong usage of .IR when .RI should have been used
> - Fix formatting of variable part in FOO<number>:
>   - Make italic the variable part (as groff_man(7) recommends)
>   - Remove <>
>   - Use syntax recommended by G. Branden Robinson (groff)
> 
> - Fix unnecessary uses of .BR or .IR when .B or .I would suffice
> - Fix formatting of punctuation
> 
>   In some cases, it was in italics or bold, and it should always be in roman.
> 
> - Use uppercase to begin text, even in bullet points, since those were
>   multi-sentence.
> 
> - Simplify usage of .RS/.RE in combination with .IP
> - s/fat/FAT/ as fs(7) does
> - Slightly reword some sentences for consistency
> - Use Linux-specific for consistency with other pages (in VERSIONS)
> - EXAMPLES: Place the return type in a line of its own (as in other pages)
> - Fix alignment of code
> - Replace unnecessary use of the GNU extension ({}) by do {} while (0)
> 
>   In that case, there was no return value (moreover, it's a noreturn).
> 
> - Break complex declaration lines into a line for each variable
> 
>   The variables were being initialized, some to non-zero values,
>   so for clarity, a line for each one seems more appropriate.
> 
> - Remove unmatched groff commands
> 
> Cc: Christian Brauner <brauner@kernel.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> ---
> 
> Hi, Christian!
> 
> I applied your v4 patch.
> On top of it I applied this fix.
> Could you please check that the non-whitespace non-formatting
> changes are correct?

Looks great.

> Also, please have a look at the whitespace and formatting fixes :)

Yep, I did. You tried to make sure that all bullet points created via
\(bu are aligned with the regular text and not indented. You forgot one,
I think. I think you need the following patch on top of your patch:

diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
index 29d308f65..70ab4592e 100644
--- a/man2/mount_setattr.2
+++ b/man2/mount_setattr.2
@@ -778,7 +778,6 @@ and let
 .I ksize
 be the size of the structure which the kernel supports,
 then there are three cases to consider:
-.RS
 .IP \(bu
 If
 .I ksize
@@ -815,7 +814,6 @@ then \-1 is returned and
 is set to
 .BR E2BIG .
 This provides forwards-compatibility.
-.RE
 .PP
 Because the definition of
 .I struct mount_attr

Thank you! Very happy we'll have a manpage for this soon.
Christian
