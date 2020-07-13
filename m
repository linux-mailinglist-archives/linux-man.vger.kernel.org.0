Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8200821D04F
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2020 09:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728284AbgGMHT0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jul 2020 03:19:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725818AbgGMHTZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jul 2020 03:19:25 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C09FC061794
        for <linux-man@vger.kernel.org>; Mon, 13 Jul 2020 00:19:25 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id d4so8829042otk.2
        for <linux-man@vger.kernel.org>; Mon, 13 Jul 2020 00:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=uVok2CPXfamnS3JWEPcVL//R39vYCFjNyjSNQm/e+CM=;
        b=WlCy2+NdS6yJGE6AvXWFS+smdl4nslsrYLfzt4FBuafUbinFxBfcMOBrmx98z6GaQi
         d6uDv8ftqn+oYkjmdyz3KFct7Q1lPLt1bBbnTrWT4IsL9S4q0iAbvHdmrPyzInljZASV
         bPb7PjbC1s8augIDmJ7PRatDMM0FOm1OG6MLeS9CU0uRLOBICwK6IqNlpEvJBNWQVISP
         UNwjhsoKihw44zwFg6UhkVTcBwuZVbn1S34kiO88eG3zb8R5qx4BnngO85nrxkRTw1Ig
         Z/v4ZOcVUAlwCuzMJhoN1vvOoTNQBvX57UouWFqPelZw3rj5XzVWR2XPbeOOCriK5kFj
         BBkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=uVok2CPXfamnS3JWEPcVL//R39vYCFjNyjSNQm/e+CM=;
        b=ZwRVdr0qpN/NXqBYTv2alc7isbQV5xrUyJKK5XQ7dRIHiw8rzuzfICljYguwCF1+rY
         SGOqIAD1ecE7kVPCB4K7MtshP/pzy3MvVU04lA0mTM2Gj5mH5EQ1niJ90cwxV53nMwsi
         QA1b206p6XQ+vETXnNdOkWO1OIrGWKmRHusWGfCO9yfZVSQjQ1Vv3ej8wQjci1aiOGhZ
         KyyMpywf1Ru8kYneNLfrHMJivu6jwdHqEBdCC4HTqGqH2eT5RIT27vpl7t0BEBqHkmN5
         zBed10JSwSaTg75YcjYpSiiwvN7JOrJtAMtZakPCJGo+mC4BUlYB4StQzkpjJ7wuU6Fx
         EI2A==
X-Gm-Message-State: AOAM533qZQyT0Lm9b00Y3WQAj+sMX/MeFLNz3kBx9KHKceL5WXsK5Vbf
        hPkIQ4jAHMG9hwPrdMxHSi9/+QYWUWv7FE8JwRrKtg==
X-Google-Smtp-Source: ABdhPJwU5prhtSmItG4aSCRKMpD6mZFFuIFV5VEfWp36uCCBvrkwi4C0kNgrOnce2NXQErwMbQGrJq+ri2WPjvb6fPc=
X-Received: by 2002:a9d:66d7:: with SMTP id t23mr69282236otm.323.1594624764754;
 Mon, 13 Jul 2020 00:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAKY=iLez+Kiz1JNURDs9eKN5v8=eu=noZVPAjmZyv4O+kmvgRA@mail.gmail.com>
In-Reply-To: <CAKY=iLez+Kiz1JNURDs9eKN5v8=eu=noZVPAjmZyv4O+kmvgRA@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 13 Jul 2020 09:19:13 +0200
Message-ID: <CAKgNAkjaciNiBt4y58Zf5APed+vt3VgW8aFP8N9PEq5KQzTnRA@mail.gmail.com>
Subject: Re: Issue with ftruncate(2)
To:     Diogo Miguel Ferreira Rodrigues <dmfrodrigues2000@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Diogo,

On Mon, 13 Jul 2020 at 01:14, Diogo Miguel Ferreira Rodrigues
<dmfrodrigues2000@gmail.com> wrote:
>
> Good afternoon,
>
> There seems to be an issue with ftruncate(2) man page.
> https://man7.org/linux/man-pages/man2/ftruncate.2.html
>
> In section NOTES, first paragraph:
> "ftruncate() can also be used to set the size of a POSIX
> shared memory object; see shm_open(7)."
> but there is no shm_open(7) page. Probably the author meant
> to refer to shm_open(3), or shm_overview(7).

Thanks! Fixed.

> PS: Thank you for your great work at maintaining the man pages!

You're welcome.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
