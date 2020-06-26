Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6688520AB7B
	for <lists+linux-man@lfdr.de>; Fri, 26 Jun 2020 06:47:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726951AbgFZEq4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Jun 2020 00:46:56 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:60991 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725768AbgFZEq4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Jun 2020 00:46:56 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 5A6975C0067;
        Fri, 26 Jun 2020 00:46:55 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute3.internal (MEProxy); Fri, 26 Jun 2020 00:46:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=philipadams.org;
         h=mime-version:message-id:date:from:to:cc:subject:content-type;
         s=fm3; bh=tFLqm473g7vlz//IOuEU6S9XZUeH6UWxWKx9QwLRWLI=; b=WDBTO
        3xIdYCOKm8QNhi7n4LvPXnjq9sU8tIvrFFH+VLwO2AIGy1wmNMgvC3tGr0cMnEPN
        NLoke4HOPARTtL+dIKk8ax+UI0nhlfpRpEm5TpMvrjBCxrfOU0biz1T6UjrG1kyO
        ZcP23rfMSmb/jZkTfcGu414WAnt92i8eoAxEapibktk8YZefwdcqZ9V7A3QnKSi8
        6ay891uqZIV6SegcCQP9RlZinQfSCop+cGzHR2DCHZtYXvVReLuUozdxwuEcAVFl
        23y3sBcP1xBNSKesSuadTYZ0TeNvd4F9jpF3xE6zR6Ab1E1EyZShgp/PLI3gT245
        iz3ibkCjS1E5PHr5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:message-id
        :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm3; bh=tFLqm473g7vlz//IOuEU6S9XZUeH6
        UWxWKx9QwLRWLI=; b=cQv4ern1hs16hm6ukrmsr+fd0/UY0u+j3tU8vnJRUFVmc
        5GcUiCVWhRmPr59oL+O0XQzqN9kdKiEhg2LE7ykvDwS2+icQmuVtQ9Dh0xz3IhPl
        pl17SRyWgQh+AuptmKQ61j2kI5ASSe9ATtTGCVjx9yoFAO+de2ndK84geFt5bxw6
        AxxyAe0REAXcd1Har/xQZpRRZMEwvR4XsXTjWdvMpmcxiQqMwAruNky9bXz0Affr
        a3uIdgttc9YkVO7luFoxtzgdzEOU36lPVBI+sJr6k4B6u0kEMtdtSh+oAs//uh5K
        99diPRHNpKQnZXMI4SKMfkgceslUqmtBGG7Xii78g==
X-ME-Sender: <xms:v331XjS-oStE9yji-_-uMr0NGC1bM93BFKJrrRVlEgBt4grTX7hhMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeltddgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfrfhhihhlihhpucetuggrmhhsfdcuoehmrghilhesphhhihhl
    ihhprggurghmshdrohhrgheqnecuggftrfgrthhtvghrnhephfekleduhfffjefhfeefle
    fgfeehgeeitefhtedtieeluddujeekhfetffetledtnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrihhlsehphhhilhhiphgruggrmhhsrd
    horhhg
X-ME-Proxy: <xmx:v331XkzQppxI3cR746XowOZo8WsUoi4AmId8-yK-C0sQGGEGgC-OwA>
    <xmx:v331Xo1Qm3d6WbuCtL7tS08OekBcPb-1YFyijIwH5xLEG3Mo--1ezQ>
    <xmx:v331XjBmX0QhW9JMMINjvdHNZFZVeJOw77dPGFAV50KN3ErKin_Now>
    <xmx:v331Xns70GrQnjwHazcRoZh-1VW_Vt_cp5XIBmNMISK4x-GYnpRYrA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 0D9BDE00A8; Fri, 26 Jun 2020 00:46:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-543-gda70334-fm-20200618.004-gda703345
Mime-Version: 1.0
Message-Id: <a670021f-79a1-435b-9abb-ae8c3fe95d8b@www.fastmail.com>
Date:   Fri, 26 Jun 2020 00:46:34 -0400
From:   "Philip Adams" <mail@philipadams.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [patch] tcp.7: tfix
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

diff --git a/man2/poll.2 b/man2/poll.2
index 73a206e75..940c51da5 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -183,7 +183,7 @@ file has been modified (see
 .RE
 .TP
 .B POLLOUT
-Writing is now possible, though a write larger that the available space
+Writing is now possible, though a write larger than the available space
 in a socket or pipe will still block (unless
 .B O_NONBLOCK
 is set).
