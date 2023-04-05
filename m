Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 703EF6D73CE
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 07:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236880AbjDEFfC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 01:35:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236854AbjDEFfB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 01:35:01 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B888199C
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 22:35:00 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pjvnL-0004j0-78; Wed, 05 Apr 2023 01:34:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=zV0YP08ncMy3s4IgPo3y1zAPSzxeSONTyYwM7Y8Oo+M=; b=gcZs7d1VsjWamwB2A7Ag
        KwpsrgqihanKdayqt8NtnU3Mq7NqKaQA11vkZPMt+mXY4dSEPNm+1Ex+ENWdhUcwVuiSrlH2S1J4u
        fp61DWfUNx8WP5AnsJNuuOzfZcUqtFScRDs3vBaaiZVJBVX3bQiciiunylKS6XHgHjNPesrxg1QOE
        1iCrJu2ZuU5rin3tfoT08hFksj/FahECOzJ2A0OoMTTBfTHZm/TzKDJKGPNaK57/JWZr/UP32a1dv
        oPvaul2HGW/8+hrxylzGFrJmjFy0BySJ2UiSaOMy3HN5kIKQSKLqFgS4/aGJsGrxKluwXMb34H0q+
        4JxVzKpOColICw==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pjvnE-0001JC-9O; Wed, 05 Apr 2023 01:34:54 -0400
Date:   Wed, 05 Apr 2023 08:35:13 +0300
Message-Id: <834jpuuc1a.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org
In-Reply-To: <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> (message from
        Alejandro Colomar on Wed, 5 Apr 2023 01:45:46 +0200)
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
MIME-version: 1.0
Content-type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Date: Wed, 5 Apr 2023 01:45:46 +0200
> Cc: help-texinfo@gnu.org
> From: Alejandro Colomar <alx.manpages@gmail.com>
> 
> With the benefit that you don't need to implement such a system from scratch,
> but just reusing the existing tools (apropos, man, whatis, ...).  It seems
> something like what I would have written if I had to implement info(1) from
> scratch.  I wish GNU guys had thought of this instead of developing their
> own incompatible system.

This last sentence is a misunderstanding.  The goal of Texinfo is not
to improve the man pages.  Texinfo is a completely different approach
to software documentation, which allows to write large books and then
produce various on-line and off-line formats to read and efficiently
search those books.

Man pages have no means of specifying structure and hyper-links except
by loosely-coupling pages via "SEE ALSO" cross-references at the end;
they have no means of quickly and efficiently finding some specific
subject except by text search (which usually produces a lot of false
positives).

By contrast, Texinfo documents have sectioning structure, have
cross-references that can appear where you need them and point
anywhere else in the document (or into another document).  They also
have indexing and commands that allow the reader to use the index in
order to find the subject he/she is interested in very quickly and
accurately, even if the text of the index entry doesn't appear
anywhere in the manual.

How can you document a large and flexible software package, such as
GDB or Texinfo or Emacs, in man pages?

It is a mistake to even compare these two documentation systems,
certainly in this way.

> >        •   In windowing environments lsp does complete resizes when windows
> >            get resized. This means it also reloads the manual page to fit the
> >            new window size.
> 
> Good.  This I miss it in less(1) often.  Not sure if they had any strong
> reason to not support that.

??? Why do you say 'less' doesn't support window resizing?  It does
here.

> >        •   lsp has an experimental TOC mode.
> > 
> >            This is a three-level folding mode trying to list only section and
> >            sub-section names for quick navigation in manual pages.
> 
> Nice, and this an important feature missing feature in info(1), as I
> reported recently.  :)

It isn't missing.  The TOC is presented as top-level menu in each
manual, and large manuals have also the "detailed menu" with all the
sub-nodes spelled out.  In addition, the Emacs Info reader has the
Info-toc command, which presents a structured menu with all the
sectioning levels of a manual even if the manual didn't produce it.

There are also more focused commands which present TOC-like lists
across all the manuals, which you can then navigate to read what you
deem appropriate.  See the description of "--all" command-line option
of the stand-alone Info reader.  For example, try this command:

  $ info --all e --index-search "init file"

There's also the index-apropos command from inside the stand-alone
reader (and the matching info-apropos in the Emacs Info reader).
