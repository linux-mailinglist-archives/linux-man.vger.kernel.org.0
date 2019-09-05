Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 60C0AAA919
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2019 18:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388785AbfIEQfG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Sep 2019 12:35:06 -0400
Received: from mail-yw1-f52.google.com ([209.85.161.52]:34459 "EHLO
        mail-yw1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725921AbfIEQfF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Sep 2019 12:35:05 -0400
Received: by mail-yw1-f52.google.com with SMTP id n126so1009144ywf.1
        for <linux-man@vger.kernel.org>; Thu, 05 Sep 2019 09:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=FBRaUDFFy94OiMJsNplZ3i1myGhcoHJKzguVuKdz0vI=;
        b=nNizHHvYZXbzj4y3OBprdrdblypck9Uv76Vr9Fe6GdJoY6/qsC1wAkFHCZWVKWtAyE
         DYMEetF2zrcNOMbeEvhGUEPr2Yq61ekTaSFrMvcy2Hi/wjJ6Y5zREJ2ol3kUttsjSkzy
         hP6iqTVDuMw3o+f/khfYGDwE3UDX3RQMQu0hjEi2ocOs2mabzWHXSIOErTUXVCFBNuDn
         TNC0tnTyxRfGnsAd5CiaVIZ7CFhtPUTgixRrYbgqm0k5Gfq6aPLbUqyo1GKt2/deULAw
         LsLTKxafTHWrpzmKMDRd91JvDhVEiTRSPDsAPN2+ISJJHfYXGv65+0ZqmfD+Ufq9MNqK
         M2wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=FBRaUDFFy94OiMJsNplZ3i1myGhcoHJKzguVuKdz0vI=;
        b=mKTQq9hAZpcep2XYatZZT4mDZf2X4XFP/O1K5GeFpqTOcjKgYsJoNBqm0+a1QgsgzS
         Ms+dVcb1CuyTkVoOwDiYb20HRM3tEhF351EqU75c9NSZKuT0/06sGAcj2xOTSqmcQwko
         cBDxYjc17pAFWLTG0Unv/AyWCEYxW7I2XkaAEk2AB+4fTlwksI3BxTFZPBhInQ+HcVf5
         Z/liRi1E11EWaADraDyuY1o0iYFz+pilk1eGfpXC5yaHeB0qX1bdYKD4bQH/8ztEJ29Y
         dIeAmWQuDz3G06vlKuDAh5inVDvT1Rk10LKnwdSPdlrJjVrZZlwzf7rcVmK8dciJCJ1a
         ZWyQ==
X-Gm-Message-State: APjAAAWt0aQb2i6pgo3tOHXrMaYRr+rdZlj//nSLkMYGnh/Zn3e8rdfV
        Tz14PibBspr8bYkZYev7RBkvJA132Jw0lr9Dhk5R9mhjUuVadQ==
X-Google-Smtp-Source: APXvYqxsLjQcj8icrh0QrrTgYygKC+2b1SQxiNkWZJJlCwRLiuzoMEDN29/3ytvWWLqdfX9oesHtntIjQiu0bElsR/s=
X-Received: by 2002:a81:9344:: with SMTP id k65mr2959630ywg.434.1567701305201;
 Thu, 05 Sep 2019 09:35:05 -0700 (PDT)
MIME-Version: 1.0
From:   Florin Blanaru <florin.blanaru96@gmail.com>
Date:   Thu, 5 Sep 2019 17:34:54 +0100
Message-ID: <CAMkHNDzkn10oZLyK9S8-UnjGn=OyMy=P8Bx7+vf0iEBwpc5p2g@mail.gmail.com>
Subject: Quick fix for syscall man page
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

http://man7.org/linux/man-pages/man2/syscall.2.html

In the first table, for the riscv Arch/ABI, the instruction should be
ecall instead of scall.

According the official manual, the instruction has been renamed.
https://content.riscv.org/wp-content/uploads/2017/05/riscv-spec-v2.2.pdf

"The SCALL and SBREAK instructions have been renamed to ECALL and
EBREAK, re-spectively. Their encoding and functionality are
unchanged."
