Return-Path: <linux-man+bounces-4194-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 31656C0A6FD
	for <lists+linux-man@lfdr.de>; Sun, 26 Oct 2025 13:28:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8590189F787
	for <lists+linux-man@lfdr.de>; Sun, 26 Oct 2025 12:28:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A4D248F69;
	Sun, 26 Oct 2025 12:28:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mpI7gZPH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A387621770C
	for <linux-man@vger.kernel.org>; Sun, 26 Oct 2025 12:27:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761481680; cv=none; b=QDyZUqqK4eTRZEY8ShxmkNhwtuIRJ8h8kUidtWvKxBT9lnJE8bceJOBwVY2AgHUd4fZzhtN3oiZANQHuAS20DQIRevgCr+wxl9+51Rena1p5BtW3ELh+FJt0P8gz1PMm6qULXZ6SiZc6cnN80OqMRx5RUozxBypOGCpJpaLZSUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761481680; c=relaxed/simple;
	bh=96xgEF/cDhtXAWfkTUNwDGMDjcisf5kN8St/i2PJMdA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UZ0geP1tKNRPnk3uCiXD8fZBLgBJ8IGnZ4Spp41wcXzX2zxxqZjW1J5cpudNvCn3+km1Yq1v+E9RX3/WYFv0BzaksTMBrbQ88cCwUqzKBG4HhdexBzj2hqmJihFhDc2pRzWKbcF/taNI8IkLOFu9DbKFMO5M5KN4evS7sZSvQ14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mpI7gZPH; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6399328ff1fso6576898a12.0
        for <linux-man@vger.kernel.org>; Sun, 26 Oct 2025 05:27:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761481677; x=1762086477; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EIyo2FXSI9SPMUW3EpKSAUcsK0v7MMc631sMa+neJaU=;
        b=mpI7gZPHdQ8TTyod60+eGIxcs/iWH3jWkmzTxX+jc8uNfd6EBHLpnWAH6Y6CeStdPH
         Fn5IVLPB7bQ2JbUn3kqErMQDlzAh/WAtSdYqOmqQWrG9LPitlSmghihc/KnVs9f1CKjH
         9kW8q7rgcAUhGxGixlfKPorsP0dWOzZw3pEy45tyYZW5r8HrfvUpp5u976f42RlQEp+o
         3x8sVDD/E5m5sGGuQL91ozMQ+MnYMc8pwkyhntxRk/wTc9LaBM3EsyMieHN5oYnOFGkh
         G+2iDdYQG58kgaE+bd/HRL97opcdxSbkW4qRFXUpPgXoS3mtdtj7RTpy7VIs8UyqzbIH
         oyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761481677; x=1762086477;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIyo2FXSI9SPMUW3EpKSAUcsK0v7MMc631sMa+neJaU=;
        b=jutBPgaX9qq2xl83uh7fgA9wpXiUpYFu/QM6smUh5U7xSfsQJezT+ETga1ZiDezgvg
         ZV4BQdYhYi5CTav0yYZBnPKolxEg8+s84b0BCj+b6S1T9sBsZcEE/TuJVK08MMSg2IkI
         e0WH79OrDREknkt+6dPmn0YFkWZVShCCIpe+yIiP4bPJ5QoQSjaAW89ipetrGNXhuZlg
         TnGvg97ns0gVy1Bd3i0R7GBmsplocUhMDRy6/Qr97/olNNqsEp1PZeHkoH3J4JltwcxX
         JHY32gSH7aea6r7ET83El29I9b6m5a2jGhmCurSn8bDxn7GcpzfiD0b1PolsmioBdhYV
         S2ag==
X-Forwarded-Encrypted: i=1; AJvYcCXpIKukdEmZBpPchxrJbNOsCQwzkDU8Yjgdr6qtlFx8p5vuRoL4hLhFQcKUK0FaMMZdcBHLGYRl550=@vger.kernel.org
X-Gm-Message-State: AOJu0YwFr5oI+w7ynL/36Er08nD06D9weSG2LAp7ODjxYkRY38UI33fL
	lmTRj0Lv4usFoi7lN8pcrDOY4AihLS9POwQpu/C2IBHiy0T7WcV/syi/
X-Gm-Gg: ASbGnctx7Ybe33MYo+Ptd2GIceWiRlVUF7ybdEC0gRmQZQFuy4nLvjyFg7lYMtl2AHK
	MablfMJrWOprotvOLlWuJ6xEw9pIHgHSwwYTJjh73DIPy8AC830S4z3Wx58QwQMhwVgz6h26rMV
	sOIl2MOU8gSOwmyA/K5nx6HMwMr3nBTY4BVNRCLK7KhXxDjrSUKs059UQvIDndzngFTeYQJxHj1
	KJG5iN2hIcW+TXv17CP+8jZ3dODkcmExKmAVIgMRqZycjs7nexlZp/6ZEi+6JspP24prdW0tQh+
	MdKT51kbqS8nzCWl5pq7bKqtf1aQkDq2GeNtXNcf+eohdn0OM+AxsVGavY0R6FRAsBpQiDVc/HD
	kWmZJVp13XLNcRFNLgxlUjQiV4jgP825HRtiZYNkG5Fyhu3MsabxbXnU/CItwx2cX5Fay37HiUv
	bGdxJKzihWiKFY1pSvn9YkJg==
X-Google-Smtp-Source: AGHT+IG+nghLDB0dKUqOb9CoFdpZ3LvT3sjNG3elsEcJPMQmBpgpXzecd9vKXOr4yry1R2RtnfT9gg==
X-Received: by 2002:a05:6402:430e:b0:63c:b2:c656 with SMTP id 4fb4d7f45d1cf-63e6000378amr6445996a12.4.1761481676685;
        Sun, 26 Oct 2025 05:27:56 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-63e7ef6c13fsm3796082a12.7.2025.10.26.05.27.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 05:27:56 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: alx@kernel.org
Cc: brauner@kernel.org,
	cyphar@cyphar.com,
	dhowells@redhat.com,
	g.branden.robinson@gmail.com,
	jack@suse.cz,
	linux-api@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-man@vger.kernel.org,
	mtk.manpages@gmail.com,
	safinaskar@zohomail.com,
	viro@zeniv.linux.org.uk
Subject: Re: [PATCH v5 0/8] man2: document "new" mount API
Date: Sun, 26 Oct 2025 15:27:42 +0300
Message-ID: <20251026122742.960661-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <hk5kr2fbrpalyggobuz3zpqeekzqv7qlhfh6sjfifb6p5n5bjs@gjowkgi776ey>
References: <hk5kr2fbrpalyggobuz3zpqeekzqv7qlhfh6sjfifb6p5n5bjs@gjowkgi776ey>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Alejandro Colomar <alx@kernel.org>:
> The full patch set has been merged now.  I've done a merge commit where

Alejandro, I still don't see manpages for "new" mount API here:
https://man7.org/linux/man-pages/dir_section_2.html

Please, publish.

-- 
Askar Safin

