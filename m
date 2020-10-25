Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9379529817C
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 12:42:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1415455AbgJYLmE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 07:42:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731992AbgJYLmD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 07:42:03 -0400
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58704C0613CE
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 04:42:02 -0700 (PDT)
Received: by mail-oo1-xc41.google.com with SMTP id l26so571594oop.9
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 04:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Ss96fSxwtRgbEYO+TkDgTC+utsTS+uzcCotAKEPUIxA=;
        b=HGg4zkZY9MC7Dc/X1mw1+IuqKfxXbOioAw5T3L23lhNDtAZdCq8934SwRnXg94WSk8
         8zbVtml1I9j+kFyFkTeY940otuEsL2TKDK8h0fqQiCbBfBjuv0E+VDoke51oACsDPZjO
         F4uDdFXsKbu4b8zUTESaT/yn2qb2hZZ3YLRgY9KD0rSzt9Al/RWht5faa36gyF6XHtQU
         LRxgpS1MY5VjzqPKRj/Y9lvcjaG8bSAaQnehMaaOV7brVGJsgkXdm+22QhNh5yN8XRA2
         93uPHts9BtYHUFMmj9Rn/ZzNgjVototxe7Apmhz69jzEKE6Kh1InSpukc5iZpNmzwOJP
         mAHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Ss96fSxwtRgbEYO+TkDgTC+utsTS+uzcCotAKEPUIxA=;
        b=AaBGUf+IqLpLLyOw+c445VDnci8PHLp/cIgrcjMrW5KoU2+SFyHznoV2Fq1KXASGBR
         G21gYVF7qjh0Bq3iv4fIQ2bljvWPcEDKNgZ5rlk+cmoPbgX/79NCfYg6oMB2CHGO895K
         kInhLEnGuy3T9Vv/u0XrKPDM3uPjFVyOVGc8qhKnSl4FVcbD51EBvsIMj9avneQjnEtM
         ByrgUwqcOd1J2pZ3ihPZVaQDCY7LH8oxg7ymQrCddaxCt8QwYiHyTvGQiD0bWT0avca7
         CqaO6ZGZi7Os4oltURpVsn1mQdG3QLE+LxwEzIpTO3KK0DzApwou3r3OfvdTV7CxLEdl
         8XoQ==
X-Gm-Message-State: AOAM531mvdN9u+PkwGtYQ5eKvCLaBLmFkYFjEdaq4UTJXD8CSL22gq4Z
        HGrD6HIqWcGF4lOmKSaLoSFD1iImCJaWikT6LaI=
X-Google-Smtp-Source: ABdhPJyiP5OD1fbG4iLhc3g/oBQ0EuNZxEMZO+K//MLEC3Yqj6tRSZS3KtsETspNZY3qqSniFcVTvXfAnkmqAuuUPhs=
X-Received: by 2002:a4a:dd0a:: with SMTP id m10mr9650421oou.80.1603626121606;
 Sun, 25 Oct 2020 04:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <20201025102132.41223-1-colomar.6.4.3@gmail.com> <20201025102132.41223-2-colomar.6.4.3@gmail.com>
In-Reply-To: <20201025102132.41223-2-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Oct 2020 12:41:50 +0100
Message-ID: <CAKgNAki2mHGCBky2nkVa2LWTFRNUaL3pKMqTdoVSZUyzt=aYxg@mail.gmail.com>
Subject: Re: [PATCH 2/2] queue.3: Fix & update after forking circleq.3,
 list.3, slist.3, stailq.3 & tailq.3
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sun, 25 Oct 2020 at 11:24, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> - ffix: Use man markup
> - Remove specific notes about code size increase
>   and execution time increase,
>   as they were (at least) inaccurate.
>   Instead, a generic note has been added.
> - Structure the text into subsections.
> - Remove sections that were empty after the forks.
> - Clearly relate macro names (SLIST, TAILQ, ...)
>   to a human readable name of which data structure
>   they implement.

Good clean-up! Thanks!

Applied.

Cheers,

Michael

> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man3/queue.3 | 189 ++++++++++++++++++++-------------------------------
>  1 file changed, 75 insertions(+), 114 deletions(-)
>
> diff --git a/man3/queue.3 b/man3/queue.3
> index 3931f8c96..c1b8a72a8 100644
> --- a/man3/queue.3
> +++ b/man3/queue.3
> @@ -28,160 +28,121 @@
>  .\" SUCH DAMAGE.
>  .\" %%%LICENSE_END
>  .\"
> -.\"    @(#)queue.3     8.2 (Berkeley) 1/24/94
> -.\" $FreeBSD$
>  .\"
> -.Dd February 7, 2015
> -.Dt QUEUE 3
> -.Os
> -.Sh NAME
> -.Nd implementations of singly-linked lists, singly-linked tail queues,
> -lists, tail queues, and circular queues
> -.Sh SYNOPSIS
> -.Sh DESCRIPTION
> -These macros define and operate on five types of data structures:
> -singly-linked lists, singly-linked tail queues, lists, tail queues, and
> -circular queues.
> -All five structures support the following functionality:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.TH QUEUE 3 2015-02-7 "GNU" "Linux Programmer's Manual"
> +.SH NAME
> +queue \- implementations of linked lists and queues
> +.SH DESCRIPTION
> +The
> +.I <sys/queue.h>
> +header file provides a set of macros that
> +define and operate on the following data structures:
> +.IP * 3
> +singly-linked lists (SLIST)
> +.IP *
> +doubly-linked lists (LIST)
> +.IP *
> +singly-linked tail queues (STAILQ)
> +.IP *
> +doubly-linked tail queues (TAILQ)
> +.IP *
> +doubly-linked circular queues (CIRCLEQ)
> +.PP
> +All structures support the following functionality:
> +.IP * 3
>  Insertion of a new entry at the head of the list.
> -.It
> +.IP *
>  Insertion of a new entry after any element in the list.
> -.It
> +.IP *
>  O(1) removal of an entry from the head of the list.
> -.It
> +.IP *
>  Forward traversal through the list.
> -.\" .It
> +.\".IP *
>  .\" Swapping the contents of two lists.
> -.El
> -.Pp
> -Singly-linked lists are the simplest of the four data structures
> +.PP
> +Code size and execution time
> +depend on the complexity of the data structure being used,
> +so programmers should take care of choosing the appropriate one.
> +.SS Singly-linked lists (SLIST)
> +Singly-linked lists are the simplest
>  and support only the above functionality.
> -Singly-linked lists are ideal for applications with large datasets
> -and few or no removals,
> +Singly-linked lists are ideal for applications with
> +large datasets and few or no removals,
>  or for implementing a LIFO queue.
>  Singly-linked lists add the following functionality:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  O(n) removal of any entry in the list.
> -.El
> -.Pp
> +.SS Singly-linked tail queues (STAILQ)
>  Singly-linked tail queues add the following functionality:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  Entries can be added at the end of a list.
> -.It
> +.IP *
>  O(n) removal of any entry in the list.
> -.It
> +.IP *
>  They may be concatenated.
> -.El
> -.Pp
> +.PP
>  However:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  All list insertions must specify the head of the list.
> -.It
> +.IP *
>  Each head entry requires two pointers rather than one.
> -.It
> -Code size is about 15% greater and operations run about 20% slower
> -than singly-linked lists.
> -.El
> -.Pp
> -Singly-linked tail queues are ideal for applications with large datasets and
> -few or no removals,
> +.PP
> +Singly-linked tail queues are ideal for applications with
> +large datasets and few or no removals,
>  or for implementing a FIFO queue.
> -.Pp
> +.SS Doubly-linked data structures
>  All doubly linked types of data structures (lists and tail queues)
>  additionally allow:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  Insertion of a new entry before any element in the list.
> -.It
> +.IP *
>  O(1) removal of any entry in the list.
> -.El
> -.Pp
> +.PP
>  However:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  Each element requires two pointers rather than one.
> -.It
> -Code size and execution time of operations (except for removal) is about
> -twice that of the singly-linked data-structures.
> -.El
> -.Pp
> +.SS Doubly-linked lists (LIST)
>  Linked lists are the simplest of the doubly linked data structures.
>  They add the following functionality over the above:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  They may be traversed backwards.
> -.El
> -.Pp
> +.PP
>  However:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  To traverse backwards, an entry to begin the traversal and the list in
>  which it is contained must be specified.
> -.El
> -.Pp
> +.SS Doubly-linked tail queues (TAILQ)
>  Tail queues add the following functionality:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  Entries can be added at the end of a list.
> -.It
> +.IP *
>  They may be traversed backwards, from tail to head.
> -.It
> +.IP *
>  They may be concatenated.
> -.El
> -.Pp
> +.PP
>  However:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  All list insertions and removals must specify the head of the list.
> -.It
> +.IP *
>  Each head entry requires two pointers rather than one.
> -.It
> -Code size is about 15% greater and operations run about 20% slower
> -than singly-linked lists.
> -.El
> -.Pp
> +.SS Doubly-linked circular queues (CIRCLEQ)
>  Circular queues add the following functionality over the above:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  The first and last entries are connected.
> -.El
> -.Pp
> +.PP
>  However:
> -.Pp
> -.Bl -enum -compact -offset indent
> -.It
> +.IP * 3
>  The termination condition for traversal is more complex.
> -.It
> -Code size is about 40% greater and operations run about 45% slower than lists.
> -.El
> -.Sh EXAMPLES
> -.Sh CONFORMING TO
> +.SH CONFORMING TO
>  Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
>  Present on the BSDs.
> -.Nm queue
> -functions first appeared in
> -.Bx 4.4 .
> -.Sh SEE ALSO
> -.Xr circleq 3
> -.Xr insque 3
> -.Xr list 3
> -.Xr slist 3
> -.Xr stailq 3
> -.Xr tailq 3
> -.\" .Xr tree 3
> +.I <sys/queue.h>
> +macros first appeared in 4.4BSD.
> +.SH SEE ALSO
> +.BR circleq (3),
> +.BR insque (3),
> +.BR list (3),
> +.BR slist (3),
> +.BR stailq (3),
> +.BR tailq (3)
> +.\" .BR tree (3)
> --
> 2.28.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
