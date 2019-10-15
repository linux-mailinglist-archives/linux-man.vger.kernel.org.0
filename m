Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DACE1D83D0
	for <lists+linux-man@lfdr.de>; Wed, 16 Oct 2019 00:36:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732942AbfJOWgO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Oct 2019 18:36:14 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:40687 "EHLO
        mail-io1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732584AbfJOWgN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Oct 2019 18:36:13 -0400
Received: by mail-io1-f43.google.com with SMTP id h144so50272358iof.7
        for <linux-man@vger.kernel.org>; Tue, 15 Oct 2019 15:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=OUduPVry1RSuT7gavjFw4d9qdCkrF4E0RY98NxovPzo=;
        b=mJc+Bwt3Rog1MXjihsPpTWlnB0YhNTCXVqFzXO0OcjySc/MRcr3GtXkBjFG300hRtt
         0kOEbybFqKmTk1MEQ5pZFWbnaX4eETK0ijlsMdagnJVks3Ky+chOJbnf+X7Gr3W9jrx+
         sgc8QT/cZLXK4CtLLUbCzNgl5Ggb8hMF7TD6Aq4TqN0X0+hSFbdS+kIXlUBt1su/xG7W
         5D3nZn6lBkRYbpKxj2sWzJkw10ZJ6ylThsLpZNPnHd3ybCqG7E7bcGpxGtivI85wzx3I
         IYshfqSqRtf3dQrFDdhTA0q/Xzzgmcb51dyeB5LecXdvExy6x2EYmdSW/TrwlYAN7KVs
         i4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=OUduPVry1RSuT7gavjFw4d9qdCkrF4E0RY98NxovPzo=;
        b=WT2c/YhOy+P6WMxqRLP2YyYNRpf5cgzIG0yWTs0mpr2iZbjSzcFumuTd0nWhBRKl/n
         47PEeKdtikbEKZMR2Sv3oGeBM3Qw5UTtQ167/RM98OnDZFlQ9VB5YLBc8N/I3c7ql4lp
         3RvQvTbPq87uovAJh/AFg/k2M2ifFDgT20sIr6z81AsWQJ8RxmR187MHLd+TzVlAVVPh
         dm4oujKhhBKI7LYQQM8oa9WjZJcov9liEpSwgmabrDrxPSU3ZxyWAQZ/SMD53gePYWlC
         SqLRHHyLV/m26YIwXLHjoRZgw8MVf5jyYAR5DThZYNkcoAsLbGE0JLVYlcpO8ZFxSH7U
         rI2Q==
X-Gm-Message-State: APjAAAXkiI8THNA3Y/DzvwErfyQLl2ZjuhOY+ta7q8j0V79qZEriIqtn
        YjhcyrIb0dmrrUE20BRvKh0GymOdFOk7uTzIJ/48FYNS
X-Google-Smtp-Source: APXvYqyv8RnmDszwI/CWptkZKQ4ov5HgUzAQEULYqqoVMAxH4c422y2T/n5hp3BomX6PDxezGMocA7HkwHtlPqIt07c=
X-Received: by 2002:a92:d782:: with SMTP id d2mr9026162iln.159.1571178972965;
 Tue, 15 Oct 2019 15:36:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4f:af16:0:0:0:0:0 with HTTP; Tue, 15 Oct 2019 15:36:12
 -0700 (PDT)
From:   Mikael Magnusson <mikachu@gmail.com>
Date:   Wed, 16 Oct 2019 00:36:12 +0200
Message-ID: <CAHYJk3QmNT1OSFQ=jBX0qPAe+QZGL13oecnXKOBU0yFuB9Ar1Q@mail.gmail.com>
Subject: 
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The abort(3) manpage starts with
  The abort() first unblocks the SIGABRT signal,
the word "function" is missing between "abort()" and "first".

-- 
Mikael Magnusson
