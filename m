Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 044371B0621
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 12:01:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726209AbgDTKB0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 06:01:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTKB0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 06:01:26 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA90FC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:01:25 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id t12so3547799edw.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=q+D+qW0OFBj3mzEy4aUS/l34CmX1jF/OCPgYggEfJes=;
        b=bbJ8eIkuCAJL6Zvh/Ac6+3MOV7UmG3W+sWxQlfiwgPL7kOG+HR73VfNJORYFAp6ZJU
         DMd3flANeVNpbcjuF5c6igR0pHEC5ZX/B97TGtTNO8oHIbzr/gEZUKriOle/FBpHOrAW
         eRqiISvxNU0dg9yS5/qgcpN0ZrPPFX5pQJ9UltXsLWninMWy+R5QCxoDl0bhpelTKzdp
         xt9yJ7+9cOQ318Eq/jviGDEAfyliXx4Sq9+hD5wwsa9YCDoDsE4APGwqV8Cm70EgrLWJ
         cFZDP9Uh6WbifFWJV2LV9XBsHNgCCi5n69O4eAyfotdH7aIDHq6nHmGMpb/GKVdAeGJv
         P2zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=q+D+qW0OFBj3mzEy4aUS/l34CmX1jF/OCPgYggEfJes=;
        b=jMqj7paheXeaM+mQCWy2YlVjeMZOBIkYDeXiBRGJvm6q1RjNNQJW4cd/YnpoP9RPVi
         R3JF6UzEDgyBowsyowexwoMfoPrWy9EoxA85m54KPDW0YEs8dvM3B2ch4VioHgQQTzBS
         awo65Vv+vU//6c5hetUM+l7vtnVhoLdDcmfUBpmXqA3+vPqWHGqBMZxpfwOajqrdhL5T
         Sim5Jbo7R3a5CiLzlrjoWPC6z8z2f6zMU8ovErOiIMU0YDSsrP0jiSRQnbE7w8jirSVv
         JZwN0DvblHvDyVfBmor0hqYKyXdzE82wGr3JU0xnJHT9PDxe+FFWivmEIqWCcZOiO01k
         0OXw==
X-Gm-Message-State: AGi0PuYs0DdcjKhd385nyS1lkCw9CAklfiEoNI9tbsBygqf4HLYBULof
        BGEjo0imsHmcKY2NA19I9cZGZ9C7CUhOPsn+O3u1hFZX
X-Google-Smtp-Source: APiQypL5WG82tHHkZAFWWMgltxN4gqtqDjnTDj1TjioFHXjTdVHW5x+p6M1lgtlZGrmXBXKMlP6rn5jEucgcuEY7Pyw=
X-Received: by 2002:a05:6402:1b08:: with SMTP id by8mr13424573edb.286.1587376884435;
 Mon, 20 Apr 2020 03:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064808.GA31024@Debian-50-lenny-64-minimal>
In-Reply-To: <20200419064808.GA31024@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 12:01:13 +0200
Message-ID: <CAKgNAkj6YdBtn0D0YEXrQoqq8p7KfsHn+Otjji7mq7xA4eYUyg@mail.gmail.com>
Subject: Re: Errors in man pages, here: locale(5): Hard to read sentence
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, 19 Apr 2020 at 08:48, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
>
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
>
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
>
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
>
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
>
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
>
> **
>
> The first sentence is difficult to read, better:
> "followed by the number of the day from the I<day> list to be shown as
>  the first day in calendar applications."
>
> "followed by the number of the first day from the I<day> list to be shown in "
> "calendar applications.  The default value of B<1> corresponds to either "
> "Sunday or Monday depending on the value of the second I<week> list item.  "
> "See NOTES."

Patched as below.

Thanks,

Michael


diff --git a/man5/locale.5 b/man5/locale.5
index b9abc3e8e..0a08b64e5 100644
--- a/man5/locale.5
+++ b/man5/locale.5
@@ -1215,9 +1215,9 @@ shall be used for Monday.
 See NOTES.
 .TP
 .IR first_weekday " (since glibc 2.2)"
-followed by the number of the first day from the
+followed by the number of the day from the
 .I day
-list to be shown in calendar applications.
+list to be shown as the first day of the week in calendar applications.
 The default value of
 .B 1
 corresponds to either Sunday or Monday depending


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
